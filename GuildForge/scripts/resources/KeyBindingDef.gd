# KeyBindingDef.gd - Généré automatiquement
class_name KeyBindingDef
extends Def

@export var category: String = ""
@export var default_key_code_a: String = ""
@export var default_key_code_b: String = ""
@export var dev_mode_only: String = ""
@export var extra_conflict_tags: Array[String] = []
@export var ignore_conflicts_with: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
