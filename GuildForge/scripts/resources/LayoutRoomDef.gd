# LayoutRoomDef.gd - Généré automatiquement
class_name LayoutRoomDef
extends Def

@export var can_merge_with_adjacent_room: bool = false
@export var edge_terrain: String = ""
@export var floor_types: Array[String] = []
@export var min_single_rect_height: String = ""
@export var min_single_rect_width: String = ""
@export var prefabs: Array[String] = []
@export var room_contents_worker_type: String = ""
@export var sketch_resolver_def: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
