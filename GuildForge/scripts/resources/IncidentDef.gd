# IncidentDef.gd - Généré automatiquement
class_name IncidentDef
extends Def

@export var allowed_biomes: Array[String] = []
@export var base_chance: float = 0.0
@export var base_chance_with_royalty: String = ""
@export var can_occur_on_all_planet_layers: Array[String] = []
@export var category: String = ""
@export var disabled_when: String = ""
@export var disallowed_biomes: Array[String] = []
@export var disease_development_stage: String = ""
@export var disease_incident: String = ""
@export var disease_lethal_letter_text: String = ""
@export var disease_max_victims: Array[String] = []
@export var disease_parts_to_affect: String = ""
@export var disease_victim_fraction_range: String = ""
@export var duration_days: Array[String] = []
@export var earliest_day: String = ""
@export var game_condition: String = ""
@export var ignore_recent_selection_weighting: String = ""
@export var letter_def: String = ""
@export var letter_hyperlink_hediff_defs: Array[String] = []
@export var letter_label: String = ""
@export var letter_singular_form: String = ""
@export var letter_text: String = ""
@export var mech_cluster_building: String = ""
@export var min_greatest_population: String = ""
@export var min_population: String = ""
@export var min_refire_days: Array[String] = []
@export var min_threat_points: Array[String] = []
@export var mtb_days_by_biome: String = ""
@export var pawn_fixed_gender: String = ""
@export var pawn_kind: String = ""
@export var pawn_must_be_capable_of_violence: String = ""
@export var points_scaleable: bool = false
@export var population_effect: String = ""
@export var quest_script_def: String = ""
@export var refire_check_tags: Array[String] = []
@export var require_colonists_present: String = ""
@export var tags: Array[String] = []
@export var tale: String = ""
@export var target_tags: Array[String] = []
@export var tree_def: String = ""
@export var tree_gen_step_def: String = ""
@export var tree_growth: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
