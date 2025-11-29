# RitualPatternDef.gd - Généré automatiquement
class_name RitualPatternDef
extends Def

@export var always_start_anytime: String = ""
@export var can_merge_gizmos_from_different_ideos: Array[String] = []
@export var can_start_anytime: bool = false
@export var desc_override: String = ""
@export var icon_path_override: String = ""
@export var ignore_consumable_building_requirement: String = ""
@export var layer_blacklist: String = ""
@export var max_tech_level: String = ""
@export var merge_gizmos_for_obligations: Array[String] = []
@export var min_tech_level: String = ""
@export var name_maker: String = ""
@export var pattern_group_tag: String = ""
@export var plays_ideo_music: String = ""
@export var ritual_behavior: String = ""
@export var ritual_expected_desc: String = ""
@export var ritual_expected_desc_no_adjective: String = ""
@export var ritual_explanation: String = ""
@export var ritual_obligation_target_filter: String = ""
@export var ritual_obligation_triggers: Array[String] = []
@export var ritual_only_for_ideo_members: Array[String] = []
@export var ritual_outcome_effect: String = ""
@export var ritual_target_filter: String = ""
@export var short_desc_override: String = ""
@export var tags: Array[String] = []

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
