# LifeStageDef.gd - Généré automatiquement
class_name LifeStageDef
extends Def

@export var adjective: String = ""
@export var always_downed: String = ""
@export var body_draw_offset: float = 0.0
@export var body_size_factor: float = 0.0
@export var body_width: String = ""
@export var can_do_random_mental_breaks: Array[String] = []
@export var can_initiate_social_interaction: bool = false
@export var can_sleep_when_starving: bool = false
@export var can_sleep_while_held: bool = false
@export var can_voluntarily_sleep: bool = false
@export var caravan_rideable: bool = false
@export var claimable: bool = false
@export var custom_mood_tip_string: String = ""
@export var developmental_stage: String = ""
@export var equipment_draw_distance_factor: float = 0.0
@export var eye_size_factor: float = 0.0
@export var fall_asleep_max_threshold_override: String = ""
@export var food_max_factor: float = 0.0
@export var head_size_factor: float = 0.0
@export var health_scale_factor: float = 0.0
@export var hunger_rate_factor: float = 0.0
@export var involuntary_sleep_is_negative_event: String = ""
@export var involuntary_sleep_mtb_days_from_rest: String = ""
@export var market_value_factor: float = 0.0
@export var melee_damage_factor: float = 0.0
@export var milkable: bool = false
@export var natural_wake_threshold_override: String = ""
@export var reproductive: String = ""
@export var shearable: bool = false
@export var silhouette_graphic_data: String = ""
@export var sitting_offset: float = 0.0
@export var stat_factors: Array[String] = []
@export var stat_offsets: Array[String] = []
@export var think_tree_constant_override: String = ""
@export var think_tree_main_override: String = ""
@export var visible: String = ""
@export var vox_pitch: String = ""
@export var vox_volume: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
