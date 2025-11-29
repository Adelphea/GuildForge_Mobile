import json
import os
from typing import Dict, List, Optional

# --- Configuration ---
RAW_PROPERTIES_PATH = "data/schema_mfd/01_raw_extraction/raw_properties_per_deftype.json"
OUTPUT_DIR = "GuildForge/scripts/resources/"

# --- Mappage des Types Complexes (Basé sur l'analyse) ---
COMPLEX_TYPES_MAP = {
    "IntRange": "IntRange",
    "FloatRange": "FloatRange",
    "IntVec2": "IntVec2",
    "Color": "Color",
    "StatModifier": "StatModifier",
    "ThingDefCountClass": "ThingDefCountClass",
    "DamageMultiplier": "DamageMultiplier",
    "comps": "CompProperties",
    "statBases": "StatModifier",
    "costList": "ThingDefCountClass",
    "tools": "Tool",
    "recipes": "RecipeDef",
    "stages": "HediffStage",
    "hediffGivers": "HediffGiver",
    "children": "EffecterChild",
    "lifeStages": "LifeStageDef",
    "skills": "SkillRecord",
    "verbs": "VerbProperties",
    "workerClass": "String",
    "thingClass": "String",
    "driverClass": "String",
    "hediffClass": "String",
    "stateClass": "String",
    # Types complexes identifiés dans le Groupe 2
    "additionalHediffs": "HediffDef",
    "explosionColorCenter": "Color",
    "explosionColorEdge": "Color",
    "combatLogRules": "CombatLogRules",
    "styleItemTags": "StyleItemTag",
    "thingStyleCategories": "ThingStyleCategoryDef",
    "pawnNameMaker": "NameMaker",
    "deityNameMaker": "NameMaker",
    "deityTypeMaker": "NameMaker",
    "festivalNameMaker": "NameMaker",
    "leaderTitleMaker": "NameMaker",
    "pawnNameMakerFemale": "NameMaker",
    "effecter": "Effecter",
    "fleck": "Fleck",
    "sound": "String", # Les sons sont des chemins de fichiers
}

# Types complexes qui doivent être générés comme des Resources séparées
TYPES_TO_GENERATE = [
    "IntRange", "FloatRange", "IntVec2", "Color", "StatModifier", 
    "ThingDefCountClass", "DamageMultiplier", "Tool", "HediffStage", 
    "HediffGiver", "EffecterChild", "LifeStageDef", "SkillRecord", "VerbProperties",
    # Types complexes du Groupe 2
    "CombatLogRules", "StyleItemTag", "NameMaker", "Effecter", "Fleck", "IncidentTargetTags"
]

# --- Propriétés Manquantes pour les Types Complexes (Stratégie de Fidélité Maximale) ---
# Seuls les types de données élémentaires conservent des propriétés manuelles.
MISSING_COMPLEX_PROPERTIES: Dict[str, List[str]] = {
    # Tous les types complexes sont laissés vides par fidélité à la source de données
    "IntRange": [],
    "FloatRange": [],
    "IntVec2": [],
    "Color": [],
    "StatModifier": [],
    "ThingDefCountClass": [],
    "DamageMultiplier": [],
    "Tool": [],
    "HediffStage": [],
    "HediffGiver": [],
    "EffecterChild": [],
    "LifeStageDef": [],
    "SkillRecord": [],
    "VerbProperties": [],
    "CombatLogRules": [], 
    "StyleItemTag": [],
    "NameMaker": [],
    "Effecter": [],
    "Fleck": [],
    "IncidentTargetTags": [],
}

# --- Classes de Base (pour l'héritage) ---
BASE_DEFS = ["Def", "ThingDef", "RecipeDef", "TraitDef"]
BASE_COMPS = ["CompProperties", "CompProperties_Storable"]

# --- Fonctions Utilitaires ---

def to_snake_case(name: str) -> str:
    """Convertit CamelCase en snake_case."""
    import re
    name = re.sub('(.)([A-Z][a-z]+)', r'\1_\2', name)
    return re.sub('([a-z0-9])([A-Z])', r'\1_\2', name).lower()

def get_gdscript_type(prop_name: str) -> str:
    """Détermine le type GDScript le plus approprié pour une propriété."""
    # 1. Vérification des types complexes basés sur le nom de la propriété
    if prop_name in COMPLEX_TYPES_MAP:
        mapped_type = COMPLEX_TYPES_MAP[prop_name]
        if mapped_type in BASE_COMPS or mapped_type.endswith("Def") or mapped_type in TYPES_TO_GENERATE:
            if prop_name.endswith("s") or prop_name.endswith("List"):
                return f"Array[{mapped_type}]"
            return mapped_type
        return mapped_type

    # 2. Vérification des types simples (heuristique basée sur le nom)
    if prop_name.endswith("s") or prop_name.endswith("List") or prop_name.endswith("Tags") or prop_name == "rules" or prop_name == "capacities":
        return "Array[String]"
    if prop_name.endswith("Factor") or prop_name.endswith("Chance") or prop_name.endswith("Rate") or prop_name.endswith("Offset") or prop_name.endswith("Density") or prop_name.endswith("Difficulty") or prop_name == "power" or prop_name == "range" or prop_name == "cooldown" or prop_name == "bodySize" or prop_name == "healthScale" or prop_name == "hungerRateFactor" or prop_name == "speed" or prop_name == "lifeTime" or prop_name == "value":
        return "float"
    if prop_name.startswith("is") or prop_name.startswith("can") or prop_name.startswith("has") or prop_name.endswith("able"):
        return "bool"
    if prop_name.endswith("Count") or prop_name.endswith("Limit") or prop_name.endswith("Order") or prop_name.endswith("Ticks") or prop_name.endswith("Points") or prop_name.endswith("Days") or prop_name == "count" or prop_name == "x" or prop_name == "z":
        return "int"
    if prop_name in ["min", "max", "r", "g", "b", "a"]:
        return "float" # Les ranges peuvent être float, les couleurs aussi
    if prop_name in ["min", "max", "r", "g", "b", "a"]:
        return "float" # Les ranges peuvent être float, les couleurs aussi
    if prop_name in ["min", "max", "x", "z"]:
        return "float" # Les ranges peuvent être float, les IntVec2 aussi
    if prop_name in ["r", "g", "b", "a"]:
        return "float" # Les couleurs



    if prop_name in ["stat", "damageDef", "thingDef", "hediff", "skillDef", "verbClass", "def", "tag", "label"]:
        return "String" # Références à d'autres Defs ou classes

    # 3. Types par défaut
    return "String"

def get_gdscript_default_value(gd_type: str) -> str:
    """Détermine la valeur par défaut pour un type GDScript."""
    if gd_type == "String":
        return '""'
    if gd_type == "int":
        return "0"
    if gd_type == "float":
        return "0.0"
    if gd_type == "bool":
        return "false"
    if gd_type.startswith("Array"):
        return "[]"
    if gd_type.endswith("Def") or gd_type.endswith("Properties") or gd_type in TYPES_TO_GENERATE:
        return "null"

    return '""'

def get_base_class(def_type: str) -> str:
    """Détermine la classe mère GDScript pour un DefType."""
    if def_type in BASE_DEFS:
        return "Resource"
    if def_type.startswith("CompProperties"):
        return "CompProperties"
    if def_type.endswith("Def"):
        return "Def"
    
    return "Resource"

def generate_gdscript_class(def_type: str, properties: List[str]) -> str:
    """Génère le contenu GDScript pour une classe."""
    base_class = get_base_class(def_type)
    
    # 1. En-tête
    code = f"# {def_type}.gd - Généré automatiquement\n"
    code += f"class_name {def_type}\n"
    code += f"extends {base_class}\n\n"
    
    # 2. Propriétés
    for prop_name in properties:
        # Ignorer les propriétés déjà définies dans les classes de base (simplification)
        if prop_name in ["defName", "label", "description", "comps"]:
            continue
            
        gd_type = get_gdscript_type(prop_name)
        default_value = get_gdscript_default_value(gd_type)
        snake_case_name = to_snake_case(prop_name)
        
        code += f'@export var {snake_case_name}: {gd_type} = {default_value}\n'
        
    # 3. Méthodes
    code += "\n# --- Méthodes de Validation et Logique ---"
    code += "\nfunc validate() -> void:"
    code += "\n\t# Méthode de validation pour s'assurer de la cohérence des données"
    code += "\n\tpass\n"
    
    return code

# --- Fonction Principale ---

def generate_all_classes(data: Dict[str, List[str]], def_types_to_generate: Optional[List[str]] = None):
    """Charge les données et génère les classes GDScript pour un groupe donné."""
    
    # os.makedirs(OUTPUT_DIR, exist_ok=True) # Le dossier existe déjà
    
    generated_count = 0
    
    # 1. Générer les classes de types complexes (qui ne sont pas des Defs/CompProperties)
    if def_types_to_generate is None: # Générer tous les types complexes uniquement lors du premier appel
        print("Génération des classes de types complexes...")
        for complex_type in TYPES_TO_GENERATE:
            # Les Defs/CompProperties seront générés dans la boucle principale
            if complex_type.endswith("Def") or complex_type.startswith("CompProperties"):
                continue 
            
            # Tenter de récupérer les propriétés du JSON, sinon utiliser les propriétés manquantes définies manuellement
            properties = data.get(complex_type, [])
            if not properties and complex_type in MISSING_COMPLEX_PROPERTIES:
                properties = MISSING_COMPLEX_PROPERTIES[complex_type]
                if properties:
                    print(f"Utilisation des propriétés manuelles pour le type complexe '{complex_type}'.")
                else:
                    print(f"Type complexe '{complex_type}' laissé vide par fidélité à la source de données.")
            elif not properties:
                print(f"Avertissement: Aucune propriété trouvée pour le type complexe '{complex_type}'. Fichier généré vide.")
            
            # Générer le code
            code = f"# {complex_type}.gd - Généré automatiquement\n"
            code += f"class_name {complex_type}\n"
            code += f"extends Resource\n\n"
            
            # Remplir les propriétés de la classe complexe
            for prop_name in properties:
                gd_type = get_gdscript_type(prop_name)
                default_value = get_gdscript_default_value(gd_type)
                snake_case_name = to_snake_case(prop_name)
                code += f'@export var {snake_case_name}: {gd_type} = {default_value}\n'
                
            code += "\nfunc validate() -> void:\n\tpass\n"
            
            output_path = os.path.join(OUTPUT_DIR, f"{complex_type}.gd")
            with open(output_path, 'w') as f:
                f.write(code)
            generated_count += 1
        
        print(f"Génération de {generated_count} classes de types complexes terminée.")
        return # Arrêter après la génération des types complexes

    # 2. Générer les classes Def et CompProperties
    print(f"Génération des classes Def et CompProperties pour le groupe: {def_types_to_generate}...")
    
    # Filtrer les DefTypes si un groupe est spécifié
    data_to_process = {k: v for k, v in data.items() if k in def_types_to_generate}

    def_comp_count = 0
    for def_type, properties in data_to_process.items():
        # Ignorer les classes de base déjà finalisées
        if def_type in BASE_DEFS or def_type in BASE_COMPS:
            continue
            
        output_path = os.path.join(OUTPUT_DIR, f"{def_type}.gd")
            
        gdscript_code = generate_gdscript_class(def_type, properties)
        
        with open(output_path, 'w') as f:
            f.write(gdscript_code)
            
        def_comp_count += 1

    print(f"Génération de {def_comp_count} classes Def/CompProperties terminée.")
    print(f"Total généré : {def_comp_count} fichiers.")

# --- Exécution pour le Groupe 1 (pour recommencer) ---

GROUP_1_DEFTYPES = [
    "BeardDef", "BiomeDef", "BodyDef", "BodyPartDef", "BodyPartGroupDef", 
    "HairDef", "HeadTypeDef", "HediffDef", "BackstoryDef", "ThingDef"
]

if __name__ == "__main__":
    try:
        # Le chemin est maintenant relatif à GuildForge_Mobile
        with open(RAW_PROPERTIES_PATH, 'r') as f:
            all_data: Dict[str, List[str]] = json.load(f)
    except FileNotFoundError:
        print(f"Erreur: Fichier de propriétés non trouvé à {RAW_PROPERTIES_PATH}")
        exit(1)
        
    # 1. Générer les types complexes (premier appel avec None)
    generate_all_classes(all_data, None) 
    
    # 2. Générer uniquement le Groupe 1 (deuxième appel avec le groupe)
    generate_all_classes(all_data, GROUP_1_DEFTYPES)
