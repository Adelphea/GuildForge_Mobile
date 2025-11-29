# TerrainTemplateDef.gd - Généré automatiquement
class_name TerrainTemplateDef
extends Def

@export var burned_def: String = ""
@export var construction_skill_prerequisite: String = ""
@export var cost_list: Array[ThingDefCountClass] = []
@export var designator_dropdown: String = ""
@export var dominant_style_category: String = ""
@export var ignore_illegal_label_character_config_error: String = ""
@export var render_precedence_start: String = ""
@export var research_prerequisites: Array[String] = []
@export var stat_bases: Array[StatModifier] = []
@export var tags: Array[String] = []
@export var texture_path: String = ""
@export var ui_order: int = 0

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
