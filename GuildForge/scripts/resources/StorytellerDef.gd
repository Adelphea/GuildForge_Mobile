# StorytellerDef.gd - Généré automatiquement
class_name StorytellerDef
extends Def

@export var disable_adaptive_training: String = ""
@export var disable_alerts: Array[String] = []
@export var disable_permadeath: String = ""
@export var forced_difficulty: float = 0.0
@export var list_order: int = 0
@export var list_visible: String = ""
@export var population_intent_factor_from_pop_curve: String = ""
@export var portrait_large: String = ""
@export var portrait_tiny: String = ""
@export var tutorial_mode: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
