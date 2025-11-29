# InspirationDef.gd - Généré automatiquement
class_name InspirationDef
extends Def

@export var allowed_on_downed_pawns: Array[String] = []
@export var associated_skills: Array[String] = []
@export var base_duration_days: Array[String] = []
@export var base_inspect_line: String = ""
@export var begin_letter: String = ""
@export var begin_letter_def: String = ""
@export var end_message: String = ""
@export var min_age: String = ""
@export var required_any_non_disabled_work_type: String = ""
@export var required_any_skill: String = ""
@export var required_capacities: Array[String] = []
@export var required_non_disabled_stats: Array[String] = []
@export var required_non_disabled_work_tags: Array[String] = []
@export var required_non_disabled_work_types: Array[String] = []
@export var required_skills: Array[String] = []
@export var stat_factors: Array[String] = []
@export var stat_offsets: Array[String] = []

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
