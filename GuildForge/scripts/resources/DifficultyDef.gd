# DifficultyDef.gd - Généré automatiquement
class_name DifficultyDef
extends Def

@export var adaptation_effect_factor: float = 0.0
@export var adaptation_growth_rate_factor_over_zero: String = ""
@export var allow_big_threats: Array[String] = []
@export var allow_cave_hives: Array[String] = []
@export var allow_extreme_weather_incidents: Array[String] = []
@export var allow_intro_threats: Array[String] = []
@export var allow_violent_quests: Array[String] = []
@export var butcher_yield_factor: float = 0.0
@export var colonist_mood_offset: float = 0.0
@export var crop_yield_factor: float = 0.0
@export var deep_drill_infestation_chance_factor: float = 0.0
@export var difficulty: String = ""
@export var disease_interval_factor: float = 0.0
@export var enemy_death_on_downed_chance_factor: float = 0.0
@export var enemy_reproduction_rate_factor: float = 0.0
@export var fishing_yield_factor: float = 0.0
@export var food_poison_chance_factor: float = 0.0
@export var is_custom: bool = false
@export var maintenance_cost_factor: float = 0.0
@export var manhunter_chance_on_damage_factor: float = 0.0
@export var min_threat_points_range_ceiling: String = ""
@export var mine_yield_factor: float = 0.0
@export var nomadic_mineable_resources_factor: float = 0.0
@export var peaceful_temples: Array[String] = []
@export var player_pawn_infection_chance_factor: float = 0.0
@export var predators_hunt_humanlikes: Array[String] = []
@export var research_speed_factor: float = 0.0
@export var scaria_rot_chance: float = 0.0
@export var study_efficiency_factor: float = 0.0
@export var threat_scale: String = ""
@export var trade_price_factor_loss: Array[String] = []
@export var wastepack_infestation_chance_factor: float = 0.0

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
