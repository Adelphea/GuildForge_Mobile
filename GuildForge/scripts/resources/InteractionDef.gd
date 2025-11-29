# InteractionDef.gd - Généré automatiquement
class_name InteractionDef
extends Def

@export var ignore_time_since_last_interaction: String = ""
@export var initiator_thought: String = ""
@export var initiator_xp_gain_amount: String = ""
@export var initiator_xp_gain_skill: String = ""
@export var interaction_mote: String = ""
@export var log_rules_initiator: String = ""
@export var recipient_thought: String = ""
@export var social_fight_base_chance: float = 0.0
@export var symbol: String = ""
@export var symbol_source: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
