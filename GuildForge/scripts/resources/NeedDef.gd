# NeedDef.gd - Généré automatiquement
class_name NeedDef
extends Def

@export var base_level: String = ""
@export var colonist_and_prisoners_only: String = ""
@export var colonists_only: String = ""
@export var developmental_stage_filter: String = ""
@export var fall_per_day: String = ""
@export var freeze_in_mental_state: String = ""
@export var freeze_while_sleeping: String = ""
@export var list_priority: String = ""
@export var major: String = ""
@export var min_intelligence: String = ""
@export var need_class: Array[String] = []
@export var never_on_prisoner: String = ""
@export var never_on_slave: String = ""
@export var nullifying_precepts: Array[String] = []
@export var only_if_caused_by_gene: String = ""
@export var only_if_caused_by_hediff: String = ""
@export var only_if_caused_by_ideo: String = ""
@export var only_if_caused_by_trait: String = ""
@export var seeker_fall_per_hour: String = ""
@export var seeker_rise_per_hour: String = ""
@export var show_for_caravan_members: Array[String] = []
@export var show_on_need_list: Array[String] = []
@export var show_unit_ticks: Array[String] = []
@export var slaves_only: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
