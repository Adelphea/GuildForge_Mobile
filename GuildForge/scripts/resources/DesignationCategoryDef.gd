# DesignationCategoryDef.gd - Généré automatiquement
class_name DesignationCategoryDef
extends Def

@export var order: String = ""
@export var preferred_column: String = ""
@export var research_prerequisites: Array[String] = []
@export var show_power_grid: String = ""
@export var special_designator_classes: Array[String] = []

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
