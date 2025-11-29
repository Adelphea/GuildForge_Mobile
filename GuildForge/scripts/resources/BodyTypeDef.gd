# BodyTypeDef.gd - Généré automatiquement
class_name BodyTypeDef
extends Def

@export var attach_points: Array[String] = []
@export var attach_points_dessicated: String = ""
@export var body_dessicated_graphic_path: String = ""
@export var body_graphic_scale: String = ""
@export var body_naked_graphic_path: String = ""
@export var head_offset: float = 0.0
@export var wound_anchors: Array[String] = []

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
