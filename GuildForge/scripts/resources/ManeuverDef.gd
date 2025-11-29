# ManeuverDef.gd - Généré automatiquement
class_name ManeuverDef
extends Def

@export var combat_log_rules_deflect: String = ""
@export var combat_log_rules_dodge: String = ""
@export var combat_log_rules_hit: String = ""
@export var combat_log_rules_miss: Array[String] = []
@export var log_entry_def: String = ""
@export var required_capacity: String = ""
@export var verb: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
