# ComplexLayoutDef.gd - Généré automatiquement
class_name ComplexLayoutDef
extends Def

@export var area_prune_percent: String = ""
@export var can_disconnect_rooms: Array[String] = []
@export var clear_door_faction: String = ""
@export var corridor_def: String = ""
@export var min_room_height: String = ""
@export var min_room_width: String = ""
@export var reward_thing_set_maker_def: String = ""
@export var room_defs: Array[String] = []
@export var threats: Array[String] = []
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
