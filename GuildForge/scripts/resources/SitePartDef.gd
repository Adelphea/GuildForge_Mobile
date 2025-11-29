# SitePartDef.gd - Généré automatiquement
class_name SitePartDef
extends Def

@export var active_threat_disturbance_factor: float = 0.0
@export var apply_faction_color_to_site_texture: String = ""
@export var approach_order_string: String = ""
@export var approaching_report_string: String = ""
@export var arrived_letter: String = ""
@export var arrived_letter_def: String = ""
@export var arrived_letter_hediff_hyperlinks: Array[String] = []
@export var bad_even_if_no_map: String = ""
@export var condition_causer_def: String = ""
@export var consider_entering_as_attack: String = ""
@export var default_hidden: String = ""
@export var disallows_automatic_detection_timer_start: String = ""
@export var excludes_tags: Array[String] = []
@export var expanding_icon_texture: String = ""
@export var force_exit_and_remove_map_countdown_duration_days: Array[String] = []
@export var grav_ships_can_land_on: String = ""
@export var handles_world_object_timeout_inspect_string: String = ""
@export var ignore_illegal_label_character_config_error: String = ""
@export var increases_population: String = ""
@export var loot_table: bool = false
@export var main_part_all_threats_label: String = ""
@export var min_faction_tech_level: String = ""
@export var min_map_size: String = ""
@export var min_threat_points: Array[String] = []
@export var requires_faction: String = ""
@export var selection_weight: String = ""
@export var show_faction_in_inspect_string: String = ""
@export var site_texture: String = ""
@export var tags: Array[String] = []
@export var wants_threat_points: Array[String] = []
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
