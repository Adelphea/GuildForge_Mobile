# SkillDef.gd - Généré automatiquement
class_name SkillDef
extends Def

@export var disabling_work_tags: Array[String] = []
@export var general_rules: Array[String] = []
@export var lesson_interaction: String = ""
@export var list_order: int = 0
@export var never_disabled_based_on_work_types: Array[String] = []
@export var pawn_creator_summary_visible: String = ""
@export var skill_label: String = ""
@export var usually_defined_in_backstories: Array[String] = []

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
