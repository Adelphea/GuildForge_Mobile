# StyleCategoryDef.gd - Généré automatiquement
class_name StyleCategoryDef
extends Def

@export var add_designator_groups: Array[String] = []
@export var add_designators: Array[String] = []
@export var icon_path: String = ""
@export var ritual_visual_effect_def: String = ""
@export var sound_ongoing_ritual: String = ""
@export var thing_def_styles: Array[String] = []

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
