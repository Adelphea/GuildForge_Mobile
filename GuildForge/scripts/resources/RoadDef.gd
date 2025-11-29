# RoadDef.gd - Généré automatiquement
class_name RoadDef
extends Def

@export var ancient_only: String = ""
@export var distortion_frequency: String = ""
@export var distortion_intensity: String = ""
@export var movement_cost_multiplier: String = ""
@export var pathing_mode: String = ""
@export var priority: String = ""
@export var road_gen_steps: Array[String] = []
@export var tiles_per_segment: String = ""
@export var world_render_steps: Array[String] = []
@export var world_transition_group: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
