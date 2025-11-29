# GatheringDef.gd - Généré automatiquement
class_name GatheringDef
extends Def

@export var called_off_message: String = ""
@export var duty: String = ""
@export var finished_message: String = ""
@export var gather_spot_defs: Array[String] = []
@export var letter_text: String = ""
@export var letter_title: String = ""
@export var random_selection_weight: String = ""
@export var required_title_any: String = ""
@export var respect_timetable: bool = false
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
