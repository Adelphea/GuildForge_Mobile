# PlanetLayerDef.gd - Généré automatiquement
class_name PlanetLayerDef
extends Def

@export var background_biome: String = ""
@export var elevation_string: String = ""
@export var gerund_label: String = ""
@export var layer_type: String = ""
@export var tile_type: String = ""
@export var view_gizmo_tex_path: String = ""
@export var view_gizmo_tooltip: String = ""
@export var world_draw_layers: Array[String] = []
@export var world_gen_steps: Array[String] = []
@export var world_tabs: Array[String] = []

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
