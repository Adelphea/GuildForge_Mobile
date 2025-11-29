# WorldObjectDef.gd - Généré automatiquement
class_name WorldObjectDef
extends Def

@export var incident_target_tags: Array[String] = []
@export var allow_caravan_incidents_which_generate_map: String = ""
@export var block_exit_grid_until_battle_is_won: String = ""
@export var can_be_player_home: bool = false
@export var can_have_map: bool = false
@export var expand_more: String = ""
@export var expanding_icon: String = ""
@export var expanding_icon_draw_size: String = ""
@export var expanding_icon_priority: String = ""
@export var expanding_icon_texture: String = ""
@export var fully_expanded_in_space: String = ""
@export var inspector_tabs: Array[String] = []
@export var is_temp_incident_map_owner: bool = false
@export var map_generator: String = ""
@export var override_map_size: String = ""
@export var saved: String = ""
@export var texture: String = ""
@export var use_dynamic_drawer: String = ""
@export var valid_launch_target: String = ""
@export var world_object_class: Array[String] = []

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
