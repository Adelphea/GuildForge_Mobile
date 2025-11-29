# StatDef.gd - Généré automatiquement
class_name StatDef
extends Def

@export var always_hide: String = ""
@export var apply_factors_if_negative: String = ""
@export var cacheable: bool = false
@export var capacity_factors: Array[String] = []
@export var capacity_offsets: Array[String] = []
@export var category: String = ""
@export var default_base_value: String = ""
@export var disable_if_skill_disabled: String = ""
@export var display_max_when_above_or_equal: String = ""
@export var display_priority_in_category: String = ""
@export var finalize_equipped_stat_offset: float = 0.0
@export var for_information_only: String = ""
@export var format_string: String = ""
@export var format_string_unfinalized: String = ""
@export var hide_at_value: String = ""
@export var hide_in_classic_mode: String = ""
@export var label_for_full_stat_list: Array[String] = []
@export var max_value: String = ""
@export var min_value: String = ""
@export var minified_thing_inherits: Array[String] = []
@export var never_disabled: String = ""
@export var no_skill_offset: float = 0.0
@export var parts: Array[String] = []
@export var post_process_curve: String = ""
@export var post_process_stat_factors: Array[String] = []
@export var round_to_five_over: String = ""
@export var round_value: String = ""
@export var scenario_randomizable: bool = false
@export var show_developmental_stage_filter: String = ""
@export var show_if_hediffs_present: String = ""
@export var show_if_mods_loaded: String = ""
@export var show_if_mods_loaded_any: String = ""
@export var show_if_undefined: String = ""
@export var show_non_abstract: String = ""
@export var show_on_animals: Array[String] = []
@export var show_on_default_value: String = ""
@export var show_on_drones: Array[String] = []
@export var show_on_entities: Array[String] = []
@export var show_on_mechanoids: Array[String] = []
@export var show_on_non_power_plants: Array[String] = []
@export var show_on_non_wild_man_humanlikes: Array[String] = []
@export var show_on_non_work_tables: Array[String] = []
@export var show_on_pawn_kind: String = ""
@export var show_on_pawns: Array[String] = []
@export var show_on_player_mechanoids: Array[String] = []
@export var show_on_slaves_only: String = ""
@export var show_on_unhaulables: Array[String] = []
@export var show_on_untradeables: Array[String] = []
@export var show_zero_base_value: String = ""
@export var skill_need_factors: Array[String] = []
@export var skill_need_offsets: Array[String] = []
@export var stat_factors: Array[String] = []
@export var supress_disabled_error: String = ""
@export var to_string_style: String = ""
@export var to_string_style_unfinalized: String = ""
@export var value_if_missing: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
