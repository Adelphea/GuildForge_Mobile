import os
import sys
import subprocess
import xmltodict
import json

# --- Configuration ---
# Le chemin vers le répertoire des données XML de RimWorld
XML_DATA_PATH = "data/rimworld_data"
# Le chemin vers le répertoire de sortie des classes GDScript (CR)
GD_SCRIPT_OUTPUT_PATH = "GuildForge/scripts/resources"
# Le chemin vers le répertoire de sortie des instances de ressources (.tres)
TRES_OUTPUT_PATH = "GuildForge/data/resources"

# Le chemin relatif du projet (pour les références ExtResource)
PROJECT_ROOT = "res://"
# Le chemin relatif des classes GDScript dans le projet Godot
GD_SCRIPT_PROJECT_PATH = "res://GuildForge/scripts/resources/"

# --- Global Map for P2 (Inter-Def References) ---
# Stocke le mapping defName -> chemin_tres (ex: "MyDef" -> "res://GuildForge/data/defs/MyDef.tres")
DEFNAME_TO_PATH_MAP = {}
# Stocke le contenu des Defs abstraits (defName -> contenu XML parsé)
ABSTRACT_DEFS_MAP = {}

# --- Fonctions Utilitaires ---

def create_output_dirs():
    """Crée les répertoires de sortie si ils n'existent pas."""
    # Les dossiers de base sont créés ici, les sous-dossiers seront créés à la volée
    os.makedirs(GD_SCRIPT_OUTPUT_PATH, exist_ok=True)
    os.makedirs(TRES_OUTPUT_PATH, exist_ok=True)

def get_def_type_from_xml(xml_dict):
    """Extrait le type de Def (ex: ThingDef) du dictionnaire XML."""
    # Le type de Def est la clé racine du dictionnaire après le parsing
    return list(xml_dict.keys())[0]

def get_def_name_from_xml(def_data):
    """Extrait le defName (ID unique) du dictionnaire XML."""
    # def_data est le contenu d'un seul Def (ex: {"defName": "MyDef", ...})
    return def_data.get("defName", "UnknownDef")

def get_module_name(xml_path):
    """Détermine le nom du module (Core, Ideology, etc.) à partir du chemin XML."""
    # Le chemin est GuildForge_Mobile/data/rimworld_data/Core/Defs/...
    # On cherche le dossier juste après rimworld_data
    parts = xml_path.split(os.sep)
    try:
        # L'index 3 correspond à 'Core', 'Ideology', etc.
        return parts[parts.index("rimworld_data") + 1].lower()
    except ValueError:
        return "core" # Par défaut si non trouvé

def get_gd_output_path(def_type, is_comp_property=False):
    """Détermine le chemin de sortie pour les fichiers .gd (classes)."""
    # Utilise la nouvelle architecture pour les classes GDScript
    def_type_lower = def_type.lower().replace("def", "").replace("cr_", "")
    
    if is_comp_property:
        folder = "comp_properties"
    elif def_type_lower in ["thing", "biome", "hediff", "backstory", "body"]:
        folder = f"{def_type_lower}_defs"
    else:
        folder = "other_defs"
        
    path = os.path.join(GD_SCRIPT_OUTPUT_PATH, folder)
    os.makedirs(path, exist_ok=True)
    return path

def get_tres_output_path(xml_path, def_type, def_name=""):
    """Détermine le chemin de sortie pour les fichiers .tres (instances)."""
    # 1. Déterminer le dossier de base (suppression du tri par module)
    base_path = TRES_OUTPUT_PATH
    
    # 2. Déterminer le dossier de type de Def
    if def_type == "ThingDef":
        def_folder = "thing_defs"
    else:
        def_folder = f"{def_type}_defs"
        
    # 3. Déterminer la sous-catégorie (pour ThingDef uniquement)
    if def_type == "ThingDef":
        # Logique V2: Utiliser la Catégorie de Fichier Source
        # Ex: .../Core/Defs/ThingDefs_Buildings/Building_Wall.xml -> ThingDefs_Buildings
        
        parts = xml_path.split(os.sep)
        sub_category = None
        for part in parts:
            if part.startswith("ThingDefs_"):
                sub_category = part
                break
        
        if sub_category is None:
            sub_category = "ThingDefs_Misc" # Catégorie par défaut si non trouvé
            
        # Chemin final: GuildForge/data/resources/thing_defs/ThingDefs_Buildings/
        path = os.path.join(base_path, def_folder, sub_category)
        
    else:
        # Logique V2: Structure plate pour les autres DefTypes
        # Chemin final: GuildForge/data/resources/JobDef_defs/
        path = os.path.join(base_path, def_folder)
        
    os.makedirs(path, exist_ok=True)
    return path
    # Utilise la nouvelle architecture pour les instances .tres


def generate_gdscript_class(def_type, is_comp_property=False):
    """P24: Génère le fichier GDScript de la classe Custom Resource (CR_DefType ou CompProperty)."""
    class_name = f"CR_{def_type}"
    
    # Déterminer le chemin de sortie
    output_dir = get_gd_output_path(def_type, is_comp_property)
    file_path = os.path.join(output_dir, f"{class_name}.gd")

    # Déterminer la classe parente (P24)
    if is_comp_property:
        parent_class = "res://GuildForge/scripts/resources/base_classes/CR_CompProperties.gd"
    else:
        parent_class = "res://GuildForge/scripts/resources/base_classes/CR_Base.gd"

    # Si la classe de base existe déjà, on ne la recrée pas.
    if class_name in ["CR_Base", "CR_CompProperties"]:
        return

    # Si le fichier existe déjà, on ne le recrée pas pour ne pas écraser les propriétés spécifiques.
    if os.path.exists(file_path):
        return

    content = f"""
# {class_name}.gd
# Généré par le pipeline. Ne pas modifier manuellement.
extends {parent_class}
class_name {class_name}

# --- Propriétés spécifiques (à compléter par introspection XML) ---
# Le pipeline doit ajouter ici les @export var spécifiques à ce DefType.

"""
    with open(file_path, "w") as f:
        f.write(content.strip())
    print(f"Généré: {file_path}")

def generate_tres_instance(xml_path, def_type, def_name, properties):
    """Génère le fichier .tres (instance de Custom Resource)."""
    class_name = f"CR_{def_type}"
    
    # Déterminer le chemin de sortie
    output_dir = get_tres_output_path(xml_path, def_type, def_name)
    file_path = os.path.join(output_dir, f"{def_name}.tres")

    # 1. Déterminer le chemin de la classe GDScript pour ExtResource
    # Le chemin doit être relatif au projet Godot (res://)
    gd_output_dir_rel = get_gd_output_path(def_type).replace(GD_SCRIPT_OUTPUT_PATH, GD_SCRIPT_PROJECT_PATH.replace("res://", "").strip("/"))
    gd_script_path = f"{GD_SCRIPT_PROJECT_PATH}{gd_output_dir_rel}/{class_name}.gd"
    
    # 2. Début du contenu .tres (avec ExtResource pour lier la classe)
    content = f"[gd_resource type=\"Script\" path=\"{gd_script_path}\" id=1]\n\n"
    content += f"[resource]\n"
    content += f"script = ExtResource(\"res://{gd_script_path}\")\n"
    
    # Ajout des propriétés
    sub_resource_count = 1
    
    def serialize_value(val):
        nonlocal sub_resource_count
        nonlocal content
        
        if isinstance(val, dict):
            # C'est un dictionnaire/objet complexe, on le sérialise comme SubResource
            sub_resource_id = sub_resource_count
            sub_resource_count += 1
            
            # Début de la SubResource
            sub_content = f"[sub_resource type=\"Resource\" id={sub_resource_id}]\n"
            
            # P25: Sérialisation typée des CompProperties
            if "@Class" in val:
                comp_class = val["@Class"]
                # Le chemin doit être relatif au projet
                comp_output_dir_rel = get_gd_output_path(comp_class, is_comp_property=True).replace(GD_SCRIPT_OUTPUT_PATH, GD_SCRIPT_PROJECT_PATH.replace("res://", "").strip("/"))
                script_path = f"res://{GD_SCRIPT_PROJECT_PATH}{comp_output_dir_rel}/CR_{comp_class}.gd"
                sub_content += f"script = ExtResource(\"{script_path}\")\n"
                del val["@Class"]
            
            # Sérialisation des propriétés de la SubResource
            for sub_key, sub_val in val.items():
                sub_content += f"{sub_key} = {serialize_value(sub_val)}\n"
            
            # Ajout de la SubResource au début du fichier
            content = sub_content + content
            
            return f"SubResource({sub_resource_id})"
            
        elif isinstance(val, list):
            # C'est une liste, on sérialise chaque élément
            serialized_list = [serialize_value(item) for item in val]
            return f"Array[{', '.join(serialized_list)}]"
            
        elif isinstance(val, str) and val.startswith('ExtResource('):
            # C'est une référence ExtResource (P2)
            return val
            
        elif isinstance(val, str) and (val.startswith("Vector") or val.startswith("Color")):
            # Types Godot (Vector, Color)
            return val
            
        elif isinstance(val, str) and val.startswith('"') and val.endswith('"'):
            # Chaîne de caractères
            return val
            
        else:
            # Autres types (nombres, booléens, etc.)
            return str(val)

    # Sérialisation des propriétés principales
    for key, value in properties.items():
        content += f"{key} = {serialize_value(value)}\n"

    with open(file_path, "w") as f:
        f.write(content.strip())
    print(f"Généré: {file_path}")

# --- Fonctions de Conversion (P1-P10) ---

def merge_dicts(base, overlay):
    """Fusionne deux dictionnaires de manière récursive (overlay écrase base)."""
    merged = base.copy()
    for key, value in overlay.items():
        if key in merged and isinstance(merged[key], dict) and isinstance(value, dict):
            merged[key] = merge_dicts(merged[key], value)
        elif key in merged and isinstance(merged[key], list) and isinstance(value, list):
            # Pour les listes, on ajoute les éléments de l'overlay à la base
            merged[key].extend(value)
        else:
            merged[key] = value
    return merged

def resolve_inheritance(def_data):
    """P1/P22: Résolution d'Héritage XML (fusion récursive)."""
    if "ParentName" not in def_data:
        return def_data
        
    parent_name = def_data["ParentName"]
    
    # P23: Validation de l'Arbre d'Héritage
    if parent_name not in ABSTRACT_DEFS_MAP:
        print(f"Erreur d'héritage: ParentName '{parent_name}' non trouvé pour Def '{get_def_name_from_xml(def_data)}'. Ignoré.")
        del def_data["ParentName"]
        return def_data
        
    parent_data = ABSTRACT_DEFS_MAP[parent_name].copy()
    
    # Résolution récursive du parent
    resolved_parent_data = resolve_inheritance(parent_data)
    
    # Fusion des données du parent dans l'enfant
    # On supprime ParentName de l'enfant avant la fusion pour éviter de le fusionner
    del def_data["ParentName"]
    
    # La fusion doit être intelligente: l'enfant écrase le parent
    merged_data = merge_dicts(resolved_parent_data, def_data)
    
    # S'assurer que les attributs XML de l'enfant sont conservés
    if "@Class" in def_data:
        merged_data["@Class"] = def_data["@Class"]
        
    return merged_data

def resolve_references(value):
    """P2: Sérialisation des Références Inter-Def."""
    if isinstance(value, str) and value in DEFNAME_TO_PATH_MAP:
        # C'est une référence à un autre Def (ex: "MyDefName")
        tres_path = DEFNAME_TO_PATH_MAP[value]
        # Format ExtResource Godot: ExtResource("res://path/to/resource.tres")
        return f'ExtResource("{tres_path}")'
    return value

def convert_raw_data_type(value):
    """P7: Tente de convertir une chaîne de caractères en type de données Godot (Vector, Color, etc.)."""
    if not isinstance(value, str):
        return value

    # Conversion Vector2 / Vector3 (ex: "(1, 2)" ou "(1, 2, 3)")
    if value.startswith("(") and value.endswith(")"):
        parts = value.strip("()").split(',')
        try:
            if len(parts) == 2:
                return f"Vector2({parts[0].strip()}, {parts[1].strip()})"
            elif len(parts) == 3:
                return f"Vector3({parts[0].strip()}, {parts[1].strip()}, {parts[2].strip()})"
        except (ValueError, IndexError):
            pass # Laisser la valeur comme chaîne si la conversion échoue

    # Conversion Color (ex: "0.8, 0.9, 0.5" ou "0.8, 0.9, 0.5, 1.0")
    if ',' in value:
        parts = value.split(',')
        try:
            if len(parts) == 3:
                return f"Color({parts[0].strip()}, {parts[1].strip()}, {parts[2].strip()}, 1.0)"
            elif len(parts) == 4:
                return f"Color({parts[0].strip()}, {parts[1].strip()}, {parts[2].strip()}, {parts[3].strip()})"
        except (ValueError, IndexError):
            pass # Laisser la valeur comme chaîne si la conversion échoue

    # Si aucune conversion n'est possible, retourner la chaîne originale
    return f'"{value}"'

def convert_xml_to_properties(def_data):
    """P3-P10: Conversion complète des propriétés (à implémenter)."""
    properties = {}
    
    # On itère sur les balises XML pour les mapper aux propriétés CR
    for key, value in def_data.items():
        # Ignorer les attributs xmltodict
        if key.startswith("@"):
            continue
        
        # P5: Ignorer les balises non pertinentes pour la conversion (ex: PatchOperation_...)
        if key.startswith("PatchOperation_"):
            continue
            
        # P2: Résolution des références (Inter-Def)
        value = resolve_references(value)
        
        # P3: Gestion des CompProperties (à implémenter)
        if key == "comps" and isinstance(value, dict) and "li" in value:
            # Les CompProperties sont souvent dans une liste sous la balise 'li'
            comp_list = value["li"]
            if not isinstance(comp_list, list):
                comp_list = [comp_list]
            
            converted_comps = []
            for comp in comp_list:
                if isinstance(comp, dict) and "@Class" in comp:
                    comp_class = comp["@Class"]
                    # On crée une SubResource pour chaque CompProperty
                    converted_comps.append(convert_xml_to_properties(comp))
                else:
                    converted_comps.append(convert_xml_to_properties(comp))
            
            properties[key] = converted_comps
            continue
        
        # P4: Gestion des types complexes (Listes et Dictionnaires)
        if isinstance(value, list):
            # Liste : on convertit chaque élément
            converted_list = [convert_xml_to_properties(item) if isinstance(item, dict) else resolve_references(item) for item in value]
            properties[key] = converted_list
            continue
        elif isinstance(value, dict):
            # Dictionnaire/Objet complexe : on convertit récursivement
            # On sérialise le dictionnaire converti comme une SubResource
            properties[key] = convert_xml_to_properties(value)
            continue
        
        # P7: Conversion des types de données brutes
        # Si la valeur n'a pas été traitée comme un type complexe (list/dict), on la convertit
        if key not in properties:
            converted_value = convert_raw_data_type(value)
            properties[key] = converted_value
        
    return properties

# --- Fonction Principale ---

def collect_all_def_names():
    """P10 (Partiel): Parcours tous les XML pour construire le DEFNAME_TO_PATH_MAP."""
    print("Phase 1: Collecte des defName pour la résolution des références (P2)...")
    
    for root, _, files in os.walk(XML_DATA_PATH):
        if "Languages" in root:
            continue
        for file_name in files:
            if file_name.endswith(".xml") and not file_name.startswith("Keyed"):
                xml_path = os.path.join(root, file_name)
                
                try:
                    with open(xml_path, "r", encoding="utf-8") as f:
                        xml_content = f.read()
                    
                    parsed_xml = xmltodict.parse(xml_content)
                    
                    if "Defs" in parsed_xml:
                        defs_container = parsed_xml["Defs"]
                        
                        for def_type, def_list in defs_container.items():
                            if not isinstance(def_list, list):
                                def_list = [def_list]
                                
                            for def_data in def_list:
                                
                                if def_name != "UnknownDef":
                                    # Déterminer le chemin de sortie pour l'instance .tres
                                    output_dir = get_tres_output_path(xml_path, def_type, def_name)
                                    # Le chemin final sera res://GuildForge/data/resources/core/thing_defs/DefName.tres
                                    tres_path = f"{PROJECT_ROOT}{output_dir.replace('GuildForge_Mobile/', '')}/{def_name}.tres"
                                    DEFNAME_TO_PATH_MAP[def_name] = tres_path
                                    
                                    # P21: Collecte des Defs abstraits
                                    if isinstance(def_data, dict) and def_data.get("@Abstract") == "True":
                                        ABSTRACT_DEFS_MAP[def_name] = def_data
                                    
                except Exception as e:
                    print(f"Avertissement: Erreur lors de la collecte de {xml_path}: {e}")

    print(f"Collecte terminée. {len(DEFNAME_TO_PATH_MAP)} defName uniques trouvés.")

def run_pipeline():
    """Fonction principale du pipeline."""
    print("Démarrage du Pipeline XML -> Custom Resource...")
    
    # 1. Création des répertoires
    create_output_dirs()
    
    # 2. Pré-traitement (P10 Partiel)
    collect_all_def_names()
    
    # 3. Parcours des fichiers XML (Seconde passe pour la conversion)
    print("Phase 2: Conversion des XML en .tres...")
    for root, _, files in os.walk(XML_DATA_PATH):
        if "Languages" in root:
            continue
        for file_name in files:
            if file_name.endswith(".xml") and not file_name.startswith("Keyed"):
                xml_path = os.path.join(root, file_name)
                print(f"Traitement du fichier: {xml_path}")
                
                try:
                    with open(xml_path, "r", encoding="utf-8") as f:
                        xml_content = f.read()
                    
                    # Parsing XML (Utilisation de xmltodict)
                    parsed_xml = xmltodict.parse(xml_content)
                    
                    # Le fichier XML peut contenir plusieurs <Defs>
                    if "Defs" in parsed_xml:
                        defs_container = parsed_xml["Defs"]
                        
                        # Chaque Def est une clé/valeur dans le conteneur
                        for def_type, def_list in defs_container.items():
                            
                            # S'assurer que def_list est une liste pour l'itération
                            if not isinstance(def_list, list):
                                def_list = [def_list]
                                
                            # 4. Génération de la classe GDScript (si elle n'existe pas)
                            generate_gdscript_class(def_type)
                            
                            # P24: Génération des classes CompProperties trouvées
                            for comp_data in def_list:
                                if isinstance(comp_data, dict) and "comps" in comp_data:
                                    comps = comp_data["comps"]
                                    if isinstance(comps, dict) and "li" in comps:
                                        comp_list = comps["li"]
                                        if not isinstance(comp_list, list):
                                            comp_list = [comp_list]
                                        for comp in comp_list:
                                            if isinstance(comp, dict) and "@Class" in comp:
                                                comp_class = comp["@Class"]
                                                generate_gdscript_class(comp_class, is_comp_property=True)
                            
                            # 5. Traitement de chaque Def
                            for def_data in def_list:
                                # P1: Résolution d'Héritage (à implémenter)
                                resolved_data = resolve_inheritance(def_data)
                                
                                # P3-P10: Conversion des propriétés
                                properties = convert_xml_to_properties(resolved_data)
                                
                                # P6: Récupération du defName
                                def_name = get_def_name_from_xml(def_data)
                                
                                # P21: Nettoyage des Duplications (Defs Abstraits)
                                if isinstance(def_data, dict) and def_data.get("@Abstract") == "True":
                                    print(f"Ignoré (Abstract Def): {def_name}")
                                    continue
                                
                                # Si le defName est "UnknownDef", on utilise le nom du fichier + type pour l'unicité
                                if def_name == "UnknownDef":
                                    def_name = f"{def_type}_{os.path.splitext(file_name)[0]}"
                                
                                # 6. Génération de l'instance .tres
                                generate_tres_instance(xml_path, def_type, def_name, properties)
                                
                except Exception as e:
                    print(f"Erreur critique lors du traitement de {xml_path}: {e}")

if __name__ == "__main__":
    # Correction du chemin de travail pour que les chemins relatifs fonctionnent
    # os.chdir("GuildForge_Mobile") # Commenté car le script est exécuté depuis la racine du projet
    run_pipeline()
    # os.chdir("..") # Commenté car inutile
