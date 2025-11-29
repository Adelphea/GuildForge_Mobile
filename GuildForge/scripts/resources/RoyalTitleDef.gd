# RoyalTitleDef.gd - Généré automatiquement
class_name RoyalTitleDef
extends Def

@export var allow_dignified_meditation_focus: Array[String] = []
@export var award_worker_class: Array[String] = []
@export var bedroom_requirements: Array[String] = []
@export var can_be_inherited: bool = false
@export var change_heir_quest_points: Array[String] = []
@export var commonality: String = ""
@export var decree_mental_break_commonality: String = ""
@export var decree_mtb_days: Array[String] = []
@export var decree_tags: Array[String] = []
@export var disabled_joy_kinds: Array[String] = []
@export var disabled_work_tags: Array[String] = []
@export var favor_cost: String = ""
@export var food_requirement: String = ""
@export var granted_abilities: Array[String] = []
@export var label_female: String = ""
@export var max_psylink_level: String = ""
@export var min_expectation: String = ""
@export var permit_points_awarded: String = ""
@export var permits: Array[String] = []
@export var recruitment_resistance_offset: float = 0.0
@export var replace_on_recruited: String = ""
@export var required_apparel: String = ""
@export var required_minimum_apparel_quality: String = ""
@export var seniority: String = ""
@export var speech_cooldown: String = ""
@export var suppress_idle_alert: String = ""
@export var throne_room_requirements: Array[String] = []

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
