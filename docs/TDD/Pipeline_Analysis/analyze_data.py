import os
import re
import json
import xmltodict
from collections import defaultdict

# Déterminer le chemin de base du dépôt
BASE_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", ".."))

# --- Configuration ---
XML_DATA_PATH = os.path.join(BASE_DIR, "data", "rimworld_data")
TRES_OUTPUT_PATH = os.path.join(BASE_DIR, "GuildForge", "data", "resources")

# Échantillons critiques pour l'analyse de données (selon DMA)
# Format: (DefName, DefType, Module)
CRITICAL_SAMPLES = [
    # 1. Def avec Héritage (ThingDef_BuildingBase est abstrait)
    ("Wall", "ThingDef", "core"),
    # 2. Def avec CompProperties complexes (ex: CompProperties_Explosive)
    ("Apparel_FlakVest", "ThingDef", "core"),
    # 3. Def avec Références Inter-Def (ex: une arme qui référence un projectile)
    ("Gun_HeavySMG", "ThingDef", "core"),
    # 4. Def avec types de données brutes (Vector, Color) - Difficile à trouver sans introspection
    ("ColorDef_IdeoColorDefs", "ColorDef", "ideology"), # Contient des couleurs
    # 5. Def avec Listes (ex: StuffProperties)
    ("Steel", "ThingDef", "core"),
    # 6. Def avec des valeurs numériques (ex: HP)
    ("Pawn", "ThingDef", "core"),
    # 7. Def d'un autre module (pour vérifier la gestion des chemins)
    ("Gene_LongJump", "GeneDef", "biotech"),
    # 8. Def avec des balises simples
    ("Axe", "ToolDef", "core"),
    # 9. Def avec des balises complexes (ex: VerbProperties)
    ("Gun_SniperRifle", "ThingDef", "core"),
    # 10. Def avec des balises de temps (ex: ticks)
    ("JobDriver_LayDown", "JobDef", "core"),
]

# --- Fonctions Utilitaires (Dupliquées de la pipeline pour l'autonomie du script) ---

def get_module_name(xml_path):
    """Détermine le nom du module (Core, Ideology, etc.) à partir du chemin XML."""
    parts = xml_path.split(os.sep)
    try:
        return parts[parts.index("rimworld_data") + 1].lower()
    except ValueError:
        return "core"

def get_tres_output_path(module_name, def_type, def_name):
    """Détermine le chemin de sortie pour les fichiers .tres (instances)."""
    def_type_lower = def_type.lower().replace("def", "").replace("cr_", "")
    
    # Correction: Le pipeline semble tout mettre dans other_defs
    folder = "other_defs"
        
    # Sous-classification par première lettre du defName pour tous les dossiers
    base_path = os.path.join(TRES_OUTPUT_PATH, module_name, folder)
    
    if def_name and def_name[0].isalpha():
        sub_folder = def_name[0].lower()
        path = os.path.join(base_path, sub_folder)
    else:
        path = base_path
        
    return os.path.join(path, f"{def_name}.tres")

def find_xml_path(def_name, module_name):
    """Tente de trouver le chemin du fichier XML pour un DefName donné."""
    # Recherche heuristique basée sur la structure typique des fichiers XML
    # Recherche dans tous les dossiers de Defs du module
    search_path = os.path.join(XML_DATA_PATH, module_name.capitalize())
    
    for root, _, files in os.walk(search_path):
        for file_name in files:
            if file_name.endswith(".xml"):
                xml_path = os.path.join(root, file_name)
                try:
                    with open(xml_path, "r", encoding="utf-8") as f:
                        xml_content = f.read()
                    
                    # Utilisation de xmltodict pour une recherche plus fiable
                    parsed_xml = xmltodict.parse(xml_content)
                    
                    if "Defs" in parsed_xml:
                        defs_container = parsed_xml["Defs"]
                        for def_type, def_list in defs_container.items():
                            if not isinstance(def_list, list):
                                def_list = [def_list]
                            for def_data in def_list:
                                if def_data.get("defName") == def_name:
                                    return xml_path
                except Exception:
                    continue
    return None

# --- Fonctions de Parsing et de Comparaison ---

def parse_tres_file(tres_path):
    """Analyse un fichier .tres pour extraire les propriétés et les valeurs."""
    properties = {}
    try:
        with open(tres_path, "r", encoding="utf-8") as f:
            content = f.read()
            
        # Regex pour trouver les lignes de propriétés principales [resource]
        resource_match = re.search(r'\[resource\]\n(.*?)\n\n', content, re.DOTALL)
        if not resource_match:
            return properties
            
        resource_content = resource_match.group(1)
        
        # Regex pour extraire clé = valeur
        prop_matches = re.findall(r'(\w+)\s*=\s*(.*)', resource_content)
        
        for key, value in prop_matches:
            # Nettoyage de la valeur (suppression des guillemets, conversion de type simple)
            if value.startswith('"') and value.endswith('"'):
                value = value.strip('"')
            elif value.lower() in ["true", "false"]:
                value = value.lower() == "true"
            elif value.replace('.', '', 1).isdigit():
                if '.' in value:
                    value = float(value)
                else:
                    value = int(value)
            
            properties[key] = value
            
    except Exception as e:
        print(f"Erreur lors du parsing de .tres {tres_path}: {e}")
    return properties

def parse_xml_def(xml_path, def_name):
    """Analyse le fichier XML pour extraire les données du DefName spécifié."""
    # Note: Cette fonction ne gère pas l'héritage ni les CompProperties complexes
    # Elle extrait les données brutes pour la comparaison.
    data = {}
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
                    if def_data.get("defName") == def_name:
                        # Extraction des balises simples pour la comparaison
                        for key, value in def_data.items():
                            if not key.startswith("@") and not key.startswith("PatchOperation_"):
                                # Simplification: on ne prend que les valeurs simples pour l'instant
                                if isinstance(value, str):
                                    data[key] = value
                                elif isinstance(value, (int, float)):
                                    data[key] = str(value)
                        return data
                        
    except Exception as e:
        print(f"Erreur lors du parsing de XML {xml_path}: {e}")
    return data

def analyze_data():
    """Effectue l'analyse de données sur les échantillons critiques."""
    report = []
    
    for def_name, def_type, module_name in CRITICAL_SAMPLES:
        print(f"Analyse de l'échantillon: {def_name} ({def_type}, {module_name})")
        
        # 1. Trouver le chemin XML
        xml_path = find_xml_path(def_name, module_name)
        if not xml_path:
            report.append({
                "DefName": def_name,
                "Statut": "Échec (XML Introuvable)",
                "Détails": f"Impossible de localiser le fichier XML pour {def_name} dans le module {module_name}."
            })
            continue
            
        # 2. Déterminer le chemin .tres
        tres_path = get_tres_output_path(module_name, def_type, def_name)
        if not os.path.exists(tres_path):
            report.append({
                "DefName": def_name,
                "Statut": "Échec (.tres Introuvable)",
                "Détails": f"Le fichier .tres attendu à {tres_path} n'existe pas."
            })
            continue
            
        # 3. Parsing des données
        xml_data = parse_xml_def(xml_path, def_name)
        tres_data = parse_tres_file(tres_path)
        
        # 4. Comparaison
        differences = {}
        
        # Comparaison des propriétés simples (chaînes, nombres)
        for key, xml_value in xml_data.items():
            tres_value = tres_data.get(key)
            
            # Tentative de conversion simple pour la comparaison
            if isinstance(tres_value, (int, float)):
                try:
                    xml_value_converted = float(xml_value)
                    if xml_value_converted != tres_value:
                        differences[key] = {"XML": xml_value, "TRES": tres_value, "Note": "Valeur numérique différente"}
                except ValueError:
                    # Si XML n'est pas numérique, comparer comme chaîne
                    if xml_value != tres_value:
                        differences[key] = {"XML": xml_value, "TRES": tres_value, "Note": "Valeur chaîne différente"}
            elif xml_value != tres_value:
                differences[key] = {"XML": xml_value, "TRES": tres_value, "Note": "Valeur chaîne/booléenne différente"}
                
        if differences:
            report.append({
                "DefName": def_name,
                "Statut": "Échec (Incohérence de Données)",
                "Détails": differences
            })
        else:
            report.append({
                "DefName": def_name,
                "Statut": "Succès (Données Simples Correspondantes)",
                "Détails": "Les propriétés simples (chaînes, nombres) correspondent."
            })
            
    return report

if __name__ == "__main__":
    results = analyze_data()
    
    output_path = os.path.join(BASE_DIR, "docs", "TDD", "Pipeline_Analysis", "data_analysis_report.json")
    
    with open(output_path, "w") as f:
        json.dump(results, f, indent=4)
        
    print(f"\nAnalyse de Données terminée. Rapport sauvegardé dans {output_path}")
    
    if results:
        print("\n--- Résumé des Lacunes de Données ---")
        for item in results:
            print(f"DefName: {item['DefName']} - {item['Statut']}")
            if item['Statut'] != "Succès (Données Simples Correspondantes)":
                print(f"  Détails: {item['Détails']}")
        print("-------------------------------------")
    else:
        print("\n--- Aucune Lacune de Données Majeure Identifiée ---")
