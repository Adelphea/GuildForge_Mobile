# RiverDef.gd - Généré automatiquement
class_name RiverDef
extends Def

@export var branches: Array[String] = []
@export var debug_opacity: String = ""
@export var degrade_child: String = ""
@export var degrade_threshold: String = ""
@export var spawn_chance: float = 0.0
@export var spawn_flow_threshold: String = ""
@export var width_on_map: String = ""
@export var width_on_world: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
