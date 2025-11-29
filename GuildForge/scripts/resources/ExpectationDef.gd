# ExpectationDef.gd - Généré automatiquement
class_name ExpectationDef
extends Def

@export var for_roles: Array[String] = []
@export var joy_kinds_needed: String = ""
@export var joy_tolerance_drop_per_day: String = ""
@export var max_map_wealth: String = ""
@export var order: String = ""
@export var ritual_quality_offset: float = 0.0
@export var thought_stage: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
