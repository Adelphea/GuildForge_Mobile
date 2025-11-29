# TerrainDef.gd - Généré automatiquement
class_name TerrainDef
extends Def

@export var affordances: Array[String] = []
@export var avoid_wander: String = ""
@export var bridge_props_path: String = ""
@export var burned_def: String = ""
@export var can_ever_terraform: bool = false
@export var can_freeze: bool = false
@export var can_generate_default_designator: bool = false
@export var category_type: String = ""
@export var color: String = ""
@export var construct_effect: String = ""
@export var construction_skill_prerequisite: String = ""
@export var cost_list: Array[ThingDefCountClass] = []
@export var designation_category: String = ""
@export var designation_hot_key: String = ""
@export var designator_dropdown: String = ""
@export var destroy_on_bomb_damage_threshold: String = ""
@export var dominant_style_category: String = ""
@export var draw_style_category: String = ""
@export var dries_to: String = ""
@export var edge_type: String = ""
@export var extinguishes_fire: String = ""
@export var fertility: String = ""
@export var flood_terrain: String = ""
@export var force_passable_by_flying_pawns: Array[String] = []
@export var generated_filth: String = ""
@export var gravship_replacement_terrain: String = ""
@export var is_paintable: bool = false
@export var layerable: bool = false
@export var path_cost: String = ""
@export var place_workers: Array[String] = []
@export var polluted_texture_path: String = ""
@export var pollution_cloud_color: String = ""
@export var pollution_color: String = ""
@export var pollution_overlay_scale: String = ""
@export var pollution_overlay_scroll_speed: String = ""
@export var pollution_overlay_texture_path: String = ""
@export var pollution_shader_type: String = ""
@export var pollution_tint_color: String = ""
@export var render_precedence: String = ""
@export var research_prerequisites: Array[String] = []
@export var resources_fraction_when_deconstructed: String = ""
@export var scatter_type: String = ""
@export var space_edge_graphic_data: String = ""
@export var stat_bases: Array[StatModifier] = []
@export var tags: Array[String] = []
@export var take_footprints: Array[String] = []
@export var texture_path: String = ""
@export var tools: Array[Tool] = []
@export var ui_icon_path: String = ""
@export var ui_order: int = 0
@export var water_body_type: String = ""
@export var water_depth_shader: String = ""
@export var water_depth_shader_parameters: Array[String] = []

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
