# TrainableDef.gd - Généré automatiquement
class_name TrainableDef
extends Def

@export var default_trainable: bool = false
@export var difficulty: String = ""
@export var icon: String = ""
@export var list_priority: String = ""
@export var min_body_size: String = ""
@export var prerequisites: Array[String] = []
@export var required_trainability: String = ""
@export var steps: Array[String] = []
@export var tags: Array[String] = []

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
