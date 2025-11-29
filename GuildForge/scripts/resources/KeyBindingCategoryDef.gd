# KeyBindingCategoryDef.gd - Généré automatiquement
class_name KeyBindingCategoryDef
extends Def

@export var check_for_conflicts: Array[String] = []
@export var is_game_universal: bool = false
@export var self_conflicting: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
