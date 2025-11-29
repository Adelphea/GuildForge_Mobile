import json
import re
import os

# Liste des 18 types complexes déjà identifiés (coquilles vides)
KNOWN_COMPLEX_TYPES = [
    "IntRange", "FloatRange", "IntVec2", "Color", "StatModifier", "ThingDefCountClass",
    "DamageMultiplier", "Tool", "HediffStage", "HediffGiver", "EffecterChild",
    "SkillRecord", "VerbProperties", "CombatLogRules", "StyleItemTag", "NameMaker",
    "Effecter", "Fleck", "CompProperties" # CompProperties est un type de base pour les composants
]

# Types primitifs (basés sur l'heuristique)
PRIMITIVE_PATTERNS = [
    r"def$", r"name$", r"label$", r"description$", r"path$", r"class$", r"type$", r"tag$", r"category$", # String
    r"value$", r"factor$", r"rate$", r"power$", r"time$", r"chance$", r"offset$", r"size$", r"scale$", # float/int
    r"count$", r"limit$", r"points$", r"hp$", r"order$", # int
    r"^is[A-Z]", r"^can[A-Z]", r"^has[A-Z]", r"^allow[A-Z]", r"^never[A-Z]", # bool
    r"list$", r"array$", r"tags$", r"defs$", r"groups$", r"classes$", r"types$", r"categories$", # Array
]

def is_primitive_or_array(prop_name):
    """Vérifie si le nom de la propriété correspond à un type primitif ou à un tableau de primitifs."""
    prop_name_lower = prop_name.lower()
    for pattern in PRIMITIVE_PATTERNS:
        if re.search(pattern, prop_name):
            return True
    return False

def check_all_deftypes(json_path):
    """Analyse le JSON pour trouver des types complexes non identifiés."""
    with open(json_path, 'r') as f:
        data = json.load(f)

    new_complex_types = set()
    
    # Exclure les types complexes déjà connus de la vérification
    deftypes_to_check = {k: v for k, v in data.items() if k not in KNOWN_COMPLEX_TYPES}

    for deftype, properties in deftypes_to_check.items():
        for prop in properties:
            # Si la propriété est en PascalCase, c'est probablement un type complexe ou une référence à un Def
            if prop[0].isupper() and not is_primitive_or_array(prop):
                
                # Si le nom de la propriété est un type complexe connu, on l'ignore
                if prop in KNOWN_COMPLEX_TYPES:
                    continue
                
                # Si le nom de la propriété est un DefType (ex: ThingDef), on l'ignore
                if prop in data:
                    continue
                
                # Si le nom de la propriété est en PascalCase et n'est pas un primitif connu,
                # c'est un candidat pour un nouveau type complexe.
                new_complex_types.add(prop)

    return new_complex_types

if __name__ == "__main__":
    # Chemin corrigé pour être exécuté depuis le répertoire GuildForge_Mobile
    json_file = "data/schema_mfd/01_raw_extraction/raw_properties_per_deftype.json"
    
    # Exécuter la vérification
    try:
        new_types = check_all_deftypes(json_file)
        
        if new_types:
            print("Nouveaux types complexes potentiels trouvés (à vérifier manuellement):")
            for t in sorted(list(new_types)):
                print(f"- {t}")
        else:
            print("Aucun nouveau type complexe potentiel trouvé dans les DefTypes restants.")
            
    except FileNotFoundError:
        print(f"Erreur: Le fichier {json_file} n'a pas été trouvé. Vérifiez le chemin.")
    except Exception as e:
        print(f"Une erreur est survenue lors de l'analyse: {e}")
