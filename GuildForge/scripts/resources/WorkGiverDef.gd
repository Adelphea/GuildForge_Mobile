# WorkGiverDef.gd - Généré automatiquement
class_name WorkGiverDef
extends Def

@export var auto_takeable_priority_drafted: String = ""
@export var bill_givers_all_animals: Array[String] = []
@export var bill_givers_all_animals_corpses: Array[String] = []
@export var bill_givers_all_humanlikes: Array[String] = []
@export var bill_givers_all_humanlikes_corpses: Array[String] = []
@export var can_be_done_by_mechs: Array[String] = []
@export var can_be_done_while_drafted: bool = false
@export var direct_orderable: bool = false
@export var does_smoothing: String = ""
@export var emergency: String = ""
@export var equivalence_group: String = ""
@export var feed_animals_only: String = ""
@export var feed_humanlikes_only: String = ""
@export var fixed_bill_giver_defs: Array[String] = []
@export var force_fleck: String = ""
@export var gerund: String = ""
@export var giver_class: Array[String] = []
@export var non_colonists_can_do: String = ""
@export var prioritize_sustains: Array[String] = []
@export var priority_in_type: String = ""
@export var required_capacities: Array[String] = []
@export var scan_cells: Array[String] = []
@export var scan_things: Array[String] = []
@export var scanner_def: String = ""
@export var tag_to_give: String = ""
@export var verb: String = ""
@export var work_tags: Array[String] = []
@export var work_type: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
