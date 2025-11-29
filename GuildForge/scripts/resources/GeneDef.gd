# GeneDef.gd - Généré automatiquement
class_name GeneDef
extends Def

@export var display_order_in_category: String = ""
@export var hair_color_override: String = ""
@export var min_melanin: String = ""
@export var random_brightness_factor: float = 0.0
@export var selection_weight: String = ""
@export var selection_weight_cultist: String = ""
@export var selection_weight_factor_dark_skin: String = ""
@export var skin_color_base: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
