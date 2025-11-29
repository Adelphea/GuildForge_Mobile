# PawnRelationDef.gd - Généré automatiquement
class_name PawnRelationDef
extends Def

@export var died_thought: String = ""
@export var died_thought_female: String = ""
@export var family_by_blood_relation: String = ""
@export var generation_chance_factor: float = 0.0
@export var implied: String = ""
@export var importance: String = ""
@export var inbred_chance_on_child: String = ""
@export var incest_opinion_offset: float = 0.0
@export var killed_thought: String = ""
@export var killed_thought_female: String = ""
@export var label_female: String = ""
@export var lost_thought: String = ""
@export var lost_thought_female: String = ""
@export var opinion_offset: float = 0.0
@export var reflexive: String = ""
@export var romance_chance_factor: float = 0.0
@export var sold_thoughts: Array[String] = []
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
