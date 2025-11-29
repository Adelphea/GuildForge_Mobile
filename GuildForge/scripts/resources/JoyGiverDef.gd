# JoyGiverDef.gd - Généré automatiquement
class_name JoyGiverDef
extends Def

@export var base_chance: float = 0.0
@export var can_do_while_in_bed: bool = false
@export var desire_sit: String = ""
@export var giver_class: Array[String] = []
@export var job_def: String = ""
@export var joy_kind: String = ""
@export var pct_pawns_ever_do: String = ""
@export var require_chair: String = ""
@export var required_capacities: Array[String] = []
@export var requires_enjoy_outdoors: Array[String] = []
@export var thing_defs: Array[String] = []
@export var unroofed_only: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
