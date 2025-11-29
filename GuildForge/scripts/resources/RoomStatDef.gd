# RoomStatDef.gd - Généré automatiquement
class_name RoomStatDef
extends Def

@export var curve: String = ""
@export var display_rounded: String = ""
@export var input_stat: String = ""
@export var is_hidden: bool = false
@export var roomless_score: String = ""
@export var score_stages: Array[String] = []
@export var update_priority: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
