import os
import xmltodict
from collections import defaultdict

# Déterminer le chemin de base du dépôt
BASE_DIR = os.path.abspath(os.getcwd())

# Chemin vers le répertoire des données XML de RimWorld
XML_DATA_PATH = os.path.join(BASE_DIR, "data", "rimworld_data")

def get_thingdef_category(xml_path):
    """
    Extrait la catégorie de ThingDef basée sur le chemin du fichier XML.
    Exemple: .../Core/Defs/ThingDefs_Buildings/Building_Wall.xml -> ThingDefs_Buildings
    """
    # Le chemin est GuildForge_Mobile/data/rimworld_data/Core/Defs/ThingDefs_Buildings/Building_Wall.xml
    parts = xml_path.split(os.sep)
    
    try:
        # On cherche le segment qui commence par "ThingDefs_"
        for part in parts:
            if part.startswith("ThingDefs_"):
                return part
        return "ThingDefs_Misc" # Catégorie par défaut si non trouvé
    except Exception:
        return "ThingDefs_Error"

def analyze_thingdef_distribution():
    """Analyse la distribution des ThingDef par catégorie de fichier source."""
    category_counts = defaultdict(int)
    
    # Parcours de tous les fichiers XML dans le répertoire des données
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
                        
                        # On ne s'intéresse qu'aux ThingDef
                        if "ThingDef" in defs_container:
                            thingdef_list = defs_container["ThingDef"]
                            if not isinstance(thingdef_list, list):
                                thingdef_list = [thingdef_list]
                            
                            # Pour chaque ThingDef, on compte le nombre d'instances
                            # et on les attribue à la catégorie extraite du chemin
                            category = get_thingdef_category(xml_path)
                            category_counts[category] += len(thingdef_list)
                            
                except Exception as e:
                    # Ignorer les erreurs de parsing pour continuer l'analyse de distribution
                    continue
                    
    return dict(category_counts)

if __name__ == "__main__":
    print("Démarrage de l'analyse de la distribution des ThingDef par catégorie de fichier source...")
    distribution = analyze_thingdef_distribution()
    
    # Trier par nombre décroissant
    sorted_distribution = dict(sorted(distribution.items(), key=lambda item: item[1], reverse=True))
    
    total_thingdefs = sum(sorted_distribution.values())
    
    print("\n--- Distribution des ThingDef par Catégorie de Fichier Source ---")
    for category, count in sorted_distribution.items():
        print(f"{category}: {count}")
        
    print(f"\nTotal des ThingDef analysés: {total_thingdefs}")
    
    # Sauvegarder le résultat pour une analyse ultérieure
    output_path = os.path.join(BASE_DIR, "docs", "TDD", "Pipeline_Analysis", "thingdef_category_distribution.json")
    with open(output_path, "w") as f:
        import json
        json.dump(sorted_distribution, f, indent=4)
    
    print(f"\nRésultat sauvegardé dans {output_path}")
