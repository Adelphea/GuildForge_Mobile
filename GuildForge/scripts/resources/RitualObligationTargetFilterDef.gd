# RitualObligationTargetFilterDef.gd - Généré automatiquement
class_name RitualObligationTargetFilterDef
extends Def

@export var max_drum_distance: String = ""
@export var max_speaker_distance: String = ""
@export var min_unroofed_cells: Array[String] = []
@export var thing_defs: Array[String] = []
@export var unroofed_cell_search_radius: Array[String] = []
@export var wood_per_participant: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
