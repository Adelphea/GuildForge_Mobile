# CR_BiomeDef.gd
# Custom Resource pour les définitions de Biomes.
# Hérite de CR_Base.

class_name CR_BiomeDef
extends CR_Base

# --- Propriétés Spécifiques au Biome ---

## La température moyenne du biome (XML: <temperature>)
@export var temperature: float = 0.0

## La fréquence d'apparition des animaux (XML: <animalDensity>)
@export var animal_density: float = 0.0

## La liste des plantes spécifiques au biome (XML: <plantList>)
## Pour l'instant, simple tableau de chaînes de caractères (DefNames)
@export var plant_list: Array[String] = []

# --- Surcharge de la Validation ---

func _validate() -> bool:
    # 1. Validation de la classe de base (ID, label, description)
    if not super._validate():
        return false
    
    # 2. Validation spécifique au Biome
    if temperature == 0.0:
        push_warning("CR_BiomeDef: 'temperature' est à 0.0 pour le biome: ", def_id)
    
    if animal_density < 0.0:
        push_error("CR_BiomeDef: 'animal_density' est négative pour le biome: ", def_id)
        return false
        
    return true
