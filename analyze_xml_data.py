import os
import json
import xml.etree.ElementTree as ET

# Définition des chemins
PROJECT_ROOT = "/home/ubuntu/GuildForge_Mobile"
RIMWORLD_DATA_PATH = os.path.join(PROJECT_ROOT, "data", "rimworld_data")
OUTPUT_PATH = os.path.join(PROJECT_ROOT, "data", "schema_mfd", "01_raw_extraction", "raw_properties_per_deftype.json")

def analyze_xml_data():
    """Analyse les fichiers XML bruts pour extraire les propriétés par type de Def."""
    
    # Dictionnaire pour stocker les propriétés uniques par type de Def
    def_properties = {}
    
    # Parcourir tous les fichiers XML dans le répertoire rimworld_data
    for root, _, files in os.walk(RIMWORLD_DATA_PATH):
        for file in files:
            if file.endswith(".xml"):
                xml_path = os.path.join(root, file)
                
                try:
                    tree = ET.parse(xml_path)
                    root_element = tree.getroot()
                    
                    # Les fichiers XML de RimWorld contiennent généralement un <Defs> racine
                    if root_element.tag == "Defs":
                        for def_element in root_element:
                            # Le tag de l'élément est le type de Def (ex: ThingDef, RecipeDef)
                            def_type = def_element.tag
                            
                            # Initialiser l'ensemble des propriétés pour ce type de Def
                            if def_type not in def_properties:
                                def_properties[def_type] = set()
                                
                            # Parcourir les enfants pour trouver les propriétés
                            for child in def_element:
                                # Le tag de l'enfant est le nom de la propriété
                                property_name = child.tag
                                def_properties[def_type].add(property_name)
                                
                except ET.ParseError as e:
                    print(f"Erreur de parsing XML dans {xml_path}: {e}")
                except Exception as e:
                    print(f"Erreur inattendue lors du traitement de {xml_path}: {e}")

    # Convertir les ensembles en listes pour la sérialisation JSON
    final_data = {def_type: sorted(list(props)) for def_type, props in def_properties.items()}
    
    # S'assurer que le répertoire de sortie existe
    os.makedirs(os.path.dirname(OUTPUT_PATH), exist_ok=True)
    
    # Écrire le fichier JSON
    with open(OUTPUT_PATH, 'w') as f:
        json.dump(final_data, f, indent=4)
        
    print(f"Fichier de propriétés généré avec succès à {OUTPUT_PATH}")
    print(f"Nombre de types de Defs uniques trouvés: {len(final_data)}")

if __name__ == "__main__":
    # Changer le répertoire de travail pour simplifier les chemins
    os.chdir(PROJECT_ROOT)
    analyze_xml_data()
