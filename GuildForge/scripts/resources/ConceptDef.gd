# ConceptDef.gd - Généré automatiquement
class_name ConceptDef
extends Def

@export var game_mode: String = ""
@export var help_text: String = ""
@export var help_text_controller: String = ""
@export var highlight_tags: Array[String] = []
@export var needs_opportunity: String = ""
@export var opportunity_decays: Array[String] = []
@export var priority: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
