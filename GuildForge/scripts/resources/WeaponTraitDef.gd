# WeaponTraitDef.gd - Généré automatiquement
class_name WeaponTraitDef
extends Def

@export var bonded_hediffs: Array[String] = []
@export var bonded_thought: String = ""
@export var commonality: String = ""
@export var equipped_hediffs: Array[String] = []
@export var equipped_stat_offsets: Array[String] = []
@export var exclusion_tags: Array[String] = []
@export var kill_thought: String = ""
@export var market_value_offset: float = 0.0
@export var never_bond: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
