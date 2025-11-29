# InstructionDef.gd - Généré automatiquement
class_name InstructionDef
extends Def

@export var action_tags_allowed: String = ""
@export var concept: String = ""
@export var end_tutorial: String = ""
@export var event_tag_initiate: String = ""
@export var event_tag_initiate_source: String = ""
@export var event_tags_end: String = ""
@export var give_on_activate_count: int = 0
@export var give_on_activate_def: String = ""
@export var highlight_tags: Array[String] = []
@export var instruction_class: Array[String] = []
@export var on_map_instruction: String = ""
@export var recipe_def: String = ""
@export var recipe_target_count: int = 0
@export var reject_input_message: String = ""
@export var reset_build_designator_stuffs: Array[String] = []
@export var start_centered: String = ""
@export var target_count: int = 0
@export var text: String = ""
@export var text_controller: String = ""
@export var thing_def: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
