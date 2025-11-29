# PawnsArrivalModeDef.gd - Généré automatiquement
class_name PawnsArrivalModeDef
extends Def

@export var layer_whitelist: String = ""
@export var min_tech_level: String = ""
@export var points_factor_curve: String = ""
@export var selection_weight_curve: String = ""
@export var selection_weight_curves_per_faction: String = ""
@export var text_enemy: String = ""
@export var text_friendly: String = ""
@export var text_will_arrive: String = ""
@export var walk_in: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
