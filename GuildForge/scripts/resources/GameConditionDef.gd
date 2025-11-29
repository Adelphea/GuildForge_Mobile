# GameConditionDef.gd - Généré automatiquement
class_name GameConditionDef
extends Def

@export var allow_underground: String = ""
@export var can_affect_all_planet_layers: Array[String] = []
@export var can_be_permanent: bool = false
@export var condition_class: Array[String] = []
@export var default_drone_level: String = ""
@export var description_future: String = ""
@export var end_message: String = ""
@export var exclusive_conditions: Array[String] = []
@export var jump_to_source_key: String = ""
@export var letter_def: String = ""
@export var letter_hyperlinks: Array[String] = []
@export var letter_text: String = ""
@export var natural: String = ""
@export var penned_animals_seek_shelter: String = ""
@export var prevent_rain: String = ""
@export var prevent_shuttle_launch: String = ""
@export var silenced_by_conditions: Array[String] = []
@export var weather_def: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
