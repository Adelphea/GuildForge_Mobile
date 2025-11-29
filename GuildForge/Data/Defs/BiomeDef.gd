# BiomeDef.gd - Généré automatiquement
class_name BiomeDef
extends Def

@export var allow_farming_camps: Array[String] = []
@export var allow_rivers: Array[String] = []
@export var allow_roads: Array[String] = []
@export var allowed_pack_animals: Array[String] = []
@export var animal_density: float = 0.0
@export var base_weather_commonalities: Array[String] = []
@export var camp_selection_weight: String = ""
@export var can_auto_choose: bool = false
@export var can_build_base: bool = false
@export var coastal_beach_terrain: String = ""
@export var coastal_wild_animals: Array[String] = []
@export var disease_mtb_days: Array[String] = []
@export var diseases: Array[String] = []
@export var fish_types: Array[String] = []
@export var forageability: String = ""
@export var foraged_food: String = ""
@export var generates_naturally: String = ""
@export var has_bedrock: bool = false
@export var has_virtual_plants: Array[String] = []
@export var impassable: bool = false
@export var is_background_biome: bool = false
@export var is_extreme_biome: bool = false
@export var is_water_biome: bool = false
@export var lake_beach_terrain: String = ""
@export var max_fish_population: String = ""
@export var movement_difficulty: float = 0.0
@export var mud_terrain: String = ""
@export var plant_density: float = 0.0
@export var pollution_wild_animals: Array[String] = []
@export var riverbank_size_range: String = ""
@export var riverbank_terrain: String = ""
@export var settle_warning: String = ""
@export var settlement_selection_weight: String = ""
@export var sounds_ambient: String = ""
@export var terrain_patch_makers: Array[String] = []
@export var terrains_by_fertility: String = ""
@export var texture: String = ""
@export var wild_animals: Array[String] = []
@export var wild_animals_can_wander_into: String = ""
@export var wild_plant_regrow_days: Array[String] = []
@export var wild_plants: Array[String] = []
@export var wild_plants_care_about_local_fertility: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
