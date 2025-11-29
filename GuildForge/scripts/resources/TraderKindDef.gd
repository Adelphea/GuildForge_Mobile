# TraderKindDef.gd - Généré automatiquement
class_name TraderKindDef
extends Def

@export var category: String = ""
@export var commonality: String = ""
@export var commonality_mult_from_population_intent: String = ""
@export var faction: String = ""
@export var hide_things_not_willing_to_trade: String = ""
@export var orbital: String = ""
@export var permit_required_for_trading: String = ""
@export var requestable: bool = false
@export var stock_generators: Array[String] = []
@export var trade_currency: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
