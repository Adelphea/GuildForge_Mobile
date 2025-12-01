import os
import xmltodict
from collections import defaultdict

# Déterminer le chemin de base du dépôt
BASE_DIR = os.path.abspath(os.getcwd())

# Chemin vers le répertoire des données XML de RimWorld
XML_DATA_PATH = os.path.join(BASE_DIR, "data", "rimworld_data")

def analyze_deftype_distribution():
    """Analyse la distribution des DefTypes dans les fichiers XML."""
    deftype_counts = defaultdict(int)
    
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
                        
                        for def_type, def_list in defs_container.items():
                            # S'assurer que def_list est une liste pour l'itération
                            if not isinstance(def_list, list):
                                def_list = [def_list]
                                
                            # Compter le nombre de Defs de ce type
                            deftype_counts[def_type] += len(def_list)
                            
                except Exception as e:
                    # Ignorer les erreurs de parsing pour continuer l'analyse de distribution
                    continue
                    
    return dict(deftype_counts)

if __name__ == "__main__":
    print("Démarrage de l'analyse de la distribution des DefTypes...")
    distribution = analyze_deftype_distribution()
    
    # Trier par nombre décroissant
    sorted_distribution = dict(sorted(distribution.items(), key=lambda item: item[1], reverse=True))
    
    total_defs = sum(sorted_distribution.values())
    
    print("\n--- Distribution des DefTypes (Nombre de Defs) ---")
    for deftype, count in sorted_distribution.items():
        print(f"{deftype}: {count}")
        
    print(f"\nTotal des Defs analysés: {total_defs}")
    
    # Sauvegarder le résultat pour une analyse ultérieure
    output_path = os.path.join(BASE_DIR, "docs", "TDD", "Pipeline_Analysis", "deftype_distribution.json")
    with open(output_path, "w") as f:
        import json
        json.dump(sorted_distribution, f, indent=4)
    
    print(f"\nRésultat sauvegardé dans {output_path}")
