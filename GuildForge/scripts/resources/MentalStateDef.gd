# MentalStateDef.gd - Généré automatiquement
class_name MentalStateDef
extends Def

@export var allow_beatfire: String = ""
@export var allow_guilty: String = ""
@export var base_inspect_line: String = ""
@export var begin_letter: String = ""
@export var begin_letter_def: String = ""
@export var begin_letter_label: String = ""
@export var block_interaction_initiation_except: String = ""
@export var block_interaction_recipient_except: String = ""
@export var block_normal_thoughts: Array[String] = []
@export var block_random_interaction: String = ""
@export var category: String = ""
@export var colonists_only: String = ""
@export var drug_category: String = ""
@export var escaping_prisoners_ignore: String = ""
@export var ignore_drug_policy: String = ""
@export var in_caravan_can_do: String = ""
@export var max_ticks_before_recovery: String = ""
@export var min_ticks_before_recovery: String = ""
@export var mood_recovery_thought: String = ""
@export var name_color: String = ""
@export var prisoners_can_do: String = ""
@export var recover_from_collapsing_exhausted: String = ""
@export var recover_from_downed: String = ""
@export var recover_from_sleep: String = ""
@export var recovery_message: String = ""
@export var recovery_mtb_days: Array[String] = []
@export var required_capacities: Array[String] = []
@export var slaves_can_do: String = ""
@export var slaves_only: String = ""
@export var state_class: String = ""
@export var state_effecter: String = ""
@export var tale: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
