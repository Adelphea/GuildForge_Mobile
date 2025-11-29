# WeatherDef.gd - Généré automatiquement
class_name WeatherDef
extends Def

@export var accuracy_multiplier: String = ""
@export var ambient_sounds: Array[String] = []
@export var commonality_rainfall_factor: float = 0.0
@export var duration_range: String = ""
@export var event_makers: Array[String] = []
@export var favorability: String = ""
@export var is_bad: bool = false
@export var move_speed_multiplier: String = ""
@export var overlay_classes: Array[String] = []
@export var perceive_priority: String = ""
@export var rain_rate: float = 0.0
@export var repeatable: bool = false
@export var sky_colors_day: String = ""
@export var sky_colors_dusk: String = ""
@export var sky_colors_night_edge: String = ""
@export var sky_colors_night_mid: String = ""
@export var snow_rate: float = 0.0
@export var temperature_range: String = ""
@export var weather_thought: String = ""
@export var wind_speed_factor: float = 0.0
@export var wind_speed_offset: float = 0.0

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
