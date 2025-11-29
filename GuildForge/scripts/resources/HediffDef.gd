# HediffDef.gd - Généré automatiquement
class_name HediffDef
extends Def

@export var added_part_props: Array[String] = []
@export var always_show_severity: String = ""
@export var battle_state_label: String = ""
@export var can_apply_dod_chance_for_capacity_changes: Array[String] = []
@export var chance_to_cause_no_pain: String = ""
@export var chemical_need: String = ""
@export var cure_all_at_once_if_cured_by_item: String = ""
@export var debug_label_extra: String = ""
@export var default_label_color: String = ""
@export var deprioritize_healing: String = ""
@export var description_hyperlinks: Array[String] = []
@export var description_short: String = ""
@export var display_wound: String = ""
@export var duplication_allowed: String = ""
@export var ever_curable_by_item: String = ""
@export var force_render_tree_recache: String = ""
@export var hediff_class: String = ""
@export var hediff_givers: Array[HediffGiver] = []
@export var initial_severity: String = ""
@export var injury_props: Array[String] = []
@export var inspect_string: String = ""
@export var is_bad: bool = false
@export var keep_on_body_part_restoration: String = ""
@export var label_noun: String = ""
@export var label_noun_pretty: String = ""
@export var lethal_severity: String = ""
@export var makes_sick_thought: String = ""
@export var max_severity: String = ""
@export var min_severity: String = ""
@export var pregnant: String = ""
@export var prevents_crawling: String = ""
@export var prevents_pregnancy: String = ""
@export var price_impact: String = ""
@export var price_offset: float = 0.0
@export var remove_on_quest_lodgers: Array[String] = []
@export var remove_with_tags: Array[String] = []
@export var render_node_properties: Array[String] = []
@export var scenario_can_add: String = ""
@export var skin_color_tint: String = ""
@export var skin_color_tint_strength: String = ""
@export var spawn_thing_on_removed: String = ""
@export var stages: Array[HediffStage] = []
@export var tags: Array[String] = []
@export var tale_on_visible: String = ""
@export var target_prefix: String = ""
@export var tendable: bool = false

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
