# ScenPartDef.gd - Généré automatiquement
class_name ScenPartDef
extends Def

@export var can_be_player_added_removed: bool = false
@export var can_be_randomly_added: bool = false
@export var category: String = ""
@export var designator_type: String = ""
@export var duration_random_range: String = ""
@export var game_condition: String = ""
@export var game_condition_targets_world: String = ""
@export var max_uses: Array[String] = []
@export var page_class: Array[String] = []
@export var scen_part_class: Array[String] = []
@export var selection_weight: String = ""
@export var summary_priority: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
