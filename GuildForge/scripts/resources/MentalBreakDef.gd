# MentalBreakDef.gd - Généré automatiquement
class_name MentalBreakDef
extends Def

@export var base_commonality: String = ""
@export var commonality_factor_per_population_curve: String = ""
@export var intensity: String = ""
@export var layer_whitelist: String = ""
@export var mental_state: String = ""
@export var quest_lodgers_can_do: String = ""
@export var required_trait: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
