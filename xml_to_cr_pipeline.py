
# -*- coding: utf-8 -*-
import os
import sys
import re
import json
import textwrap
from typing import Dict, Any, List

# --- Configuration ---
# Utilisation de chemins absolus basés sur l'emplacement du script pour la robustesse
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
PROJECT_ROOT = os.path.abspath(os.path.join(SCRIPT_DIR, os.pardir)) # Remonte au dossier GuildForge_Mobile
XML_DATA_PATH = os.path.join(PROJECT_ROOT, "data/rimworld_data/Core/Defs/")
CR_OUTPUT_PATH = os.path.join(PROJECT_ROOT, "GuildForge/data/defs/")
GD_CLASS_PATH = "GuildForge/scripts/resources/" # Chemin relatif à res:// dans Godot
LIB_PATH = os.path.join(SCRIPT_DIR, "lib")

# --- Initialisation ---
sys.path.append(LIB_PATH)
try:
    import xmltodict
except ImportError:
    print("ERREUR: La bibliothèque 'xmltodict' est introuvable. Assurez-vous qu'elle est installée dans le dossier 'lib'.")
    sys.exit(1)

# --- Fonctions Utilitaires (P4, P7) ---

def _to_snake_case(name: str) -> str:
    name = re.sub('(.)([A-Z][a-z]+)', r'\1_\2', name)
    return re.sub('([a-z0-9])([A-Z])', r'\1_\2', name).lower()

def _convert_raw_data_type(value: str) -> str:
    """P7: Convertit les chaînes de données brutes (ex: Color, Vector3) en format Godot."""
    value = value.strip()
    if not value:
        return ""

    parts = [p.strip() for p in value.split(',')]
    is_numeric = all(p.replace('.', '', 1).lstrip('-').isdigit() for p in parts)

    if is_numeric:
        if len(parts) == 3:
            # Peut être Color(r,g,b) ou Vector3(x,y,z). On ne peut pas deviner.
            # On retourne une chaîne pour que le GDScript puisse parser.
            return f'\"{value}\"'
        if len(parts) == 4:
            return f"Color({parts[0]}, {parts[1]}, {parts[2]}, {parts[3]})"

    return ""

def _handle_complex_type(data: Any) -> str:
    """P4: Gère la sérialisation récursive des types de données complexes."""
    if isinstance(data, dict):
        if 'li' in data:
            return _handle_list_property(data)

        items = []
        for k, v in data.items():
            if k.startswith('@') and k != '@Class':
                continue
            serialized_value = _handle_complex_type(v)
            items.append(f'\"{_to_snake_case(k)}\": {serialized_value}')
        return f'{{ {", ".join(items)} }}'

    elif isinstance(data, list):
        items = [_handle_complex_type(item) for item in data]
        return f'Array([{", ".join(items)}])'

    elif isinstance(data, str):
        raw_conversion = _convert_raw_data_type(data)
        if raw_conversion:
            return raw_conversion
        try:
            if '.' in data and data.replace('.', '', 1).lstrip('-').isdigit():
                return str(float(data))
            elif data.lstrip('-').isdigit():
                return str(int(data))
        except (ValueError, AttributeError):
            pass
        # Échappement des backslashes et des guillemets doubles pour la sérialisation Godot
        escaped_data = data.strip().replace('\\', '\\\\').replace('"', '\\"')
        return f'\"{escaped_data}\"'

    elif isinstance(data, (int, float, bool)):
        return str(data).lower()
    elif data is None:
        return "null"
    else:
        return f'\"{str(data)}\"'

def _handle_list_property(list_data: Dict[str, Any]) -> str:
    items = []
    li_items = list_data.get('li', [])
    if not isinstance(li_items, list):
        li_items = [li_items]
    for item in li_items:
        items.append(_handle_complex_type(item))
    return f'Array([{", ".join(items)}])'

def _serialize_cr_property(key: str, value: str) -> str:
    return f'{_to_snake_case(key)} = {value}'

# --- Fonctions de Pipeline (P1, P2, P3, P5, P6, P8) ---

def _generate_tres_content(def_data: Dict[str, Any], class_name: str) -> str:
    """Génère le contenu .tres pour un Def."""
    # P6: Le `class_name` est déjà déterminé, on l'utilise.
    content = f'[gd_resource type="Resource" script="res://{GD_CLASS_PATH}{class_name}.gd"]\n'
    content += f'def_id = \"{def_data.get("defName", "")}\"\n'

    for key, value in def_data.items():
        if key in ["defName", "ParentName", "Abstract", "li", "defType", "_resolved"]:
            continue

        # P5: Ignorer les opérations de patch.
        if key.startswith('PatchOperation'):
            print(f"INFO (P5): Balise de patch '{key}' ignorée dans '{def_data.get('defName')}'")
            continue

        value_str = ""
        # P3: Gestion des CompProperties avec attribut @Class.
        if isinstance(value, dict) and '@Class' in value:
            comp_class_name = value['@Class']
            # Le TDD-01 spécifie que les CompProperties sont des CR, donc SubResource.
            value_str = f'SubResource(\"res://{GD_CLASS_PATH}{comp_class_name}.gd\")'
        # P2: Gestion des références Inter-Def.
        elif key.endswith('Def') and isinstance(value, str):
            ref_id = _to_snake_case(value)
            # Utilise un chemin relatif pour la portabilité.
            tres_folder = os.path.basename(CR_OUTPUT_PATH)
            value_str = f'ExtResource(\"res://{tres_folder}/{ref_id}.tres\")'
        # P4: Gestion des types complexes (listes, dictionnaires).
        elif isinstance(value, (dict, list)):
             value_str = _handle_complex_type(value)
        # Gestion des types simples.
        else:
            value_str = _handle_complex_type(value)

        content += _serialize_cr_property(key, value_str) + '\n'

    return content

def _load_all_defs() -> Dict[str, Dict[str, Any]]:
    """Charge tous les Defs depuis les fichiers XML."""
    all_defs = {}
    if not os.path.exists(XML_DATA_PATH):
        print(f"ERREUR: Le répertoire XML_DATA_PATH n'existe pas: {XML_DATA_PATH}")
        return all_defs

    for root, _, files in os.walk(XML_DATA_PATH):
        for filename in files:
            if not filename.endswith('.xml'):
                continue
            xml_path = os.path.join(root, filename)
            try:
                with open(xml_path, 'r', encoding='utf-8') as f:
                    data = xmltodict.parse(f.read())
                defs_container = data.get('Defs', {})
                if not defs_container:
                    continue

                for def_type, def_list in defs_container.items():
                    if not isinstance(def_list, list):
                        def_list = [def_list]
                    for def_data in def_list:
                        def_id = def_data.get('defName', '').strip()
                        # P8: Détection du chargement conditionnel.
                        if 'LoadIfModActive' in def_data:
                            print(f"INFO (P8): Le Def '{def_id}' a un chargement conditionnel. La logique sera gérée par le DefManager.")
                        if def_id:
                            def_data['defType'] = def_type
                            all_defs[def_id] = def_data
            except Exception as e:
                print(f"ERREUR de parsing XML dans {filename}: {e}")
    return all_defs

def _resolve_inheritance(all_defs: Dict[str, Dict[str, Any]]) -> Dict[str, Dict[str, Any]]:
    """P1: Résout l'héritage (ParentName) de manière récursive."""
    resolved_defs = {}
    def resolve_single_def(def_id: str):
        if def_id in resolved_defs:
            return resolved_defs[def_id]
        
        current_def = all_defs.get(def_id)
        if not current_def:
            # Ne pas lever d'erreur si un parent est manquant, juste avertir.
            print(f"AVERTISSEMENT: Parent Def '{def_id}' non trouvé.")
            return None

        parent_name = current_def.get('ParentName')
        if parent_name:
            parent_def = resolve_single_def(parent_name)
            if parent_def:
                merged_def = parent_def.copy()
                merged_def.update(current_def)
                resolved_defs[def_id] = merged_def
                return merged_def
            else:
                # Le parent n'a pas pu être résolu, on utilise la définition actuelle.
                resolved_defs[def_id] = current_def.copy()
                return current_def
        else:
            resolved_defs[def_id] = current_def.copy()
            return current_def

    for def_id in list(all_defs.keys()):
        resolve_single_def(def_id)
        
    return {k: v for k, v in resolved_defs.items() if v.get('Abstract') != 'True'}

def run_pipeline():
    """Fonction principale du pipeline."""
    print("--- Démarrage du Pipeline de Conversion XML -> CR ---")
    all_defs = _load_all_defs()
    print(f"1. Chargement de {len(all_defs)} Defs depuis les fichiers XML.")

    resolved_defs = _resolve_inheritance(all_defs)
    print(f"2. Résolution de l'héritage terminée. {len(resolved_defs)} Defs concrets à générer.")

    os.makedirs(CR_OUTPUT_PATH, exist_ok=True)
    generated_files_count = 0
    for def_id, def_data in resolved_defs.items():
        def_type = def_data.get('defType')
        if not def_type:
            continue
        
        # P6: Mapping dynamique defType -> class_name
        class_name = f"CR_{def_type}"
        
        gd_script_path = os.path.join(PROJECT_ROOT, GD_CLASS_PATH, f"{class_name}.gd")
        if not os.path.exists(gd_script_path):
            # print(f"AVERTISSEMENT: Classe GDScript '{class_name}.gd' non trouvée. Fichier .tres non généré pour '{def_id}'.")
            continue

        tres_content = _generate_tres_content(def_data, class_name)
        output_filename = f"{_to_snake_case(def_id)}.tres"
        output_path = os.path.join(CR_OUTPUT_PATH, output_filename)
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(tres_content)
        generated_files_count += 1

    print(f"3. Génération de {generated_files_count} fichiers .tres dans {CR_OUTPUT_PATH}")

    _final_validation(resolved_defs)

def _final_validation(resolved_defs: Dict[str, Dict[str, Any]]):
    """P10: Validation finale des ressources générées."""
    print("4. Démarrage de la Validation Finale (P10)...")
    errors = 0
    for def_id, def_data in resolved_defs.items():
        # Vérification de la présence de defName (identifiant unique)
        if not def_data.get('defName'):
            print(f"ERREUR (P10): Def sans 'defName' trouvé. Type: {def_data.get('defType')}")
            errors += 1
        
        # Vérification de la présence d'un type de Def
        if not def_data.get('defType'):
            print(f"ERREUR (P10): Def '{def_id}' sans 'defType' trouvé.")
            errors += 1
            
    if errors == 0:
        print("Validation finale (P10) réussie : Tous les Defs concrets ont un 'defName' et un 'defType'.")
    else:
        print(f"Validation finale (P10) terminée avec {errors} erreurs.")


if __name__ == '__main__':
    # Création de l'environnement de test
    os.makedirs(XML_DATA_PATH, exist_ok=True)
    test_xml_content = textwrap.dedent("""
    <Defs>
        <BiomeDef Abstract="True" Name="BaseBiome">
            <defName>BaseBiome</defName>
            <temperature>10</temperature>
            <animalDensity>0.5</animalDensity>
            <color>0.8, 0.9, 0.5</color>
        </BiomeDef>
        <BiomeDef ParentName="BaseBiome">
            <defName>TemperateForest</defName>
            <temperature>15</temperature>
            <plantList>
                <li>Oak</li>
                <li>Pine</li>
            </plantList>
            <someComplexData>
                <value1>123</value1>
                <value2>abc</value2>
            </someComplexData>
        </BiomeDef>
        <ThingDef>
            <defName>MyThing</defName>
            <compProperties Class="CompProperties_MyComp">
                <prop1>true</prop1>
            </compProperties>
        </ThingDef>
    </Defs>
    """)
    with open(os.path.join(XML_DATA_PATH, "TestDefs.xml"), 'w', encoding='utf-8') as f:
        f.write(test_xml_content)

    gd_path = os.path.join(PROJECT_ROOT, GD_CLASS_PATH)
    os.makedirs(gd_path, exist_ok=True)
    with open(os.path.join(gd_path, "CR_Base.gd"), 'w') as f: f.write("extends Resource\n")
    with open(os.path.join(gd_path, "CR_CompProperties.gd"), 'w') as f: f.write("extends Resource\n")
    with open(os.path.join(gd_path, "CR_BiomeDef.gd"), 'w') as f: f.write("extends CR_Base\n")
    with open(os.path.join(gd_path, "CR_ThingDef.gd"), 'w') as f: f.write("extends CR_Base\n")
    with open(os.path.join(gd_path, "CompProperties_MyComp.gd"), 'w') as f: f.write("extends CR_CompProperties\n")

    run_pipeline()
