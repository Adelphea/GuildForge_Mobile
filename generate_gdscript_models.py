import json
import os
import re

# Définition des chemins
PROJECT_ROOT = "/home/ubuntu/GuildForge_Mobile"
RAW_PROPERTIES_PATH = os.path.join(PROJECT_ROOT, "data", "schema_mfd", "01_raw_extraction", "raw_properties_per_deftype.json")
OUTPUT_DIR = os.path.join(PROJECT_ROOT, "scripts", "resources", "generated")

# Les 6 classes de base conservées (pour les ignorer dans la génération et pour l'héritage)
BASE_CLASSES = {
    "Def": "Def",
    "ThingDef": "ThingDef",
    "RecipeDef": "RecipeDef",
    "TraitDef": "TraitDef",
    "CompProperties": "CompProperties",
    "CompProperties_Storable": "CompProperties_Storable"
}

def determine_parent_class(def_type):
    """Détermine la classe parente basée sur le nom du Def."""
    if def_type.startswith("CompProperties"):
        return "CompProperties"
    elif def_type.endswith("Def"):
        # Simplification basée sur la hiérarchie RimWorld
        if def_type == "ThingDef":
            return "Def"
        return "Def"
    return "Resource" # Fallback

def generate_models():
    """Charge les données et génère tous les modèles GDScript."""
    
    # 1. Charger les propriétés brutes
    try:
        with open(RAW_PROPERTIES_PATH, 'r') as f:
            raw_properties = json.load(f)
    except FileNotFoundError:
        print(f"Erreur: Fichier de propriétés brutes non trouvé à {RAW_PROPERTIES_PATH}. Impossible de générer les modèles.")
        return
    
    # 2. Créer le répertoire de sortie
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    
    # 3. Générer les classes
    for def_type, prop_names in raw_properties.items():
        # On ignore les classes de base déjà définies
        if def_type in BASE_CLASSES:
            continue
            
        parent_class = determine_parent_class(def_type)
        
        content = f"# {def_type}.gd\n"
        content += f"# Modèle de données généré pour le type de Def '{def_type}'\n"
        content += f"# Classe parente: {parent_class}\n\n"
        content += f"class_name {def_type}\n"
        content += f"extends {parent_class}\n\n"
        
        # Ajout des propriétés
        for prop_name in prop_names:
            # Heuristique simple pour le type GDScript
            if prop_name.endswith("Def") or prop_name.endswith("DefName"):
                gd_type = "String" # Référence à un autre Def
            elif prop_name.startswith("is") or prop_name.startswith("can") or prop_name.endswith("Allowed"):
                gd_type = "bool"
            elif prop_name.endswith("Count") or prop_name.endswith("Limit") or prop_name.endswith("Cost"):
                gd_type = "int"
            elif prop_name.endswith("Factor") or prop_name.endswith("Chance") or prop_name.endswith("Density"):
                gd_type = "float"
            elif prop_name.endswith("List") or prop_name.endswith("Categories") or prop_name.endswith("Tags") or prop_name.endswith("Defs"):
                gd_type = "Array"
            else:
                gd_type = "Variant" # Type par défaut si l'heuristique échoue
                
            content += f"## {prop_name}\n"
            content += f"@export var {prop_name}: {gd_type} # Type GDScript estimé\n\n"
            
        # Écriture du fichier
        output_path = os.path.join(OUTPUT_DIR, f"{def_type}.gd")
        with open(output_path, 'w') as f:
            f.write(content)
            
        print(f"Généré: {output_path}")

    print("Génération des modèles GDScript terminée.")

if __name__ == "__main__":
    # Changer le répertoire de travail pour simplifier les chemins
    os.chdir(PROJECT_ROOT)
    generate_models()
