# ResearchProjectDef.gd - Généré automatiquement
class_name ResearchProjectDef
extends Def

@export var base_cost: String = ""
@export var discovered_letter_disabled_when: String = ""
@export var discovered_letter_text: String = ""
@export var discovered_letter_title: String = ""
@export var general_rules: Array[String] = []
@export var held_by_faction_category_tags: Array[String] = []
@export var hidden_prerequisites: Array[String] = []
@export var hide_when: String = ""
@export var prerequisites: Array[String] = []
@export var recalculate_power: String = ""
@export var required_research_building: String = ""
@export var required_research_facilities: Array[String] = []
@export var research_view_x: String = ""
@export var research_view_y: String = ""
@export var tags: Array[String] = []
@export var tech_level: String = ""
@export var techprint_commonality: String = ""
@export var techprint_count: int = 0
@export var techprint_market_value: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
