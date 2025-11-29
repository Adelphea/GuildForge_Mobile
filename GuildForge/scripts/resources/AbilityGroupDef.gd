# AbilityGroupDef.gd - Généré automatiquement
class_name AbilityGroupDef
extends Def

@export var cooldown_ticks: Array[String] = []
@export var ritual_role_ids: Array[String] = []
@export var send_message_on_cooldown_complete: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
