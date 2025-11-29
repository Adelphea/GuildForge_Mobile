# TaleDef.gd - Généré automatiquement
class_name TaleDef
extends Def

@export var base_interest: String = ""
@export var colonist_only: String = ""
@export var def_symbol: String = ""
@export var def_type: String = ""
@export var expire_days: Array[String] = []
@export var first_pawn_symbol: String = ""
@export var history_graph_color: String = ""
@export var ignore_chance: float = 0.0
@export var max_per_pawn: String = ""
@export var rule_pack: String = ""
@export var second_pawn_symbol: String = ""
@export var tale_class: Array[String] = []
@export var type: String = ""
@export var usable_for_art: String = ""
@export var usable_with_children: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
