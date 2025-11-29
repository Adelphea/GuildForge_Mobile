# WorkTypeDef.gd - Généré automatiquement
class_name WorkTypeDef
extends Def

@export var always_start_active: String = ""
@export var disabled_for_slaves: Array[String] = []
@export var gerund_label: String = ""
@export var label_short: String = ""
@export var natural_priority: String = ""
@export var pawn_label: String = ""
@export var relevant_skills: Array[String] = []
@export var require_capable_colonist: String = ""
@export var verb: String = ""
@export var work_tags: Array[String] = []

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
