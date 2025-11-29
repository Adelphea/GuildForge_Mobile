# QuestScriptDef.gd - Généré automatiquement
class_name QuestScriptDef
extends Def

@export var affected_by_points: Array[String] = []
@export var affected_by_population: String = ""
@export var auto_accept: String = ""
@export var can_give_royal_favor: bool = false
@export var default_challenge_rating: String = ""
@export var default_charity: String = ""
@export var default_hidden: String = ""
@export var end_on_colony_move: String = ""
@export var epic: String = ""
@export var epic_parent: String = ""
@export var ever_acceptable_in_space: String = ""
@export var expire_days_range: String = ""
@export var failed_or_expired_history_event: String = ""
@export var hide_involved_factions_info: String = ""
@export var is_root_special: bool = false
@export var quest_available_letter_def: String = ""
@export var quest_content_rules: Array[String] = []
@export var quest_description_and_name_rules: Array[String] = []
@export var quest_description_rules: Array[String] = []
@export var quest_name_rules: Array[String] = []
@export var root: String = ""
@export var root_increases_population: String = ""
@export var root_min_points: Array[String] = []
@export var root_min_progress_score: String = ""
@export var root_selection_weight: String = ""
@export var root_selection_weight_factor_from_points_curve: String = ""
@export var send_available_letter: String = ""
@export var success_history_event: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
