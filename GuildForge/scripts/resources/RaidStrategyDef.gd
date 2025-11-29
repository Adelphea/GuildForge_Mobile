# RaidStrategyDef.gd - Généré automatiquement
class_name RaidStrategyDef
extends Def

@export var arrival_text_enemy: String = ""
@export var arrival_text_friendly: String = ""
@export var arrive_modes: Array[String] = []
@export var layer_whitelist: String = ""
@export var letter_label_enemy: String = ""
@export var letter_label_friendly: String = ""
@export var min_pawns: Array[String] = []
@export var pawns_can_bring_food: String = ""
@export var points_factor_curve: String = ""
@export var raid_loot_value_factor: float = 0.0
@export var selection_weight_curves_per_faction: String = ""
@export var selection_weight_per_points_curve: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
