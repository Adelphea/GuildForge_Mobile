# ThoughtDef.gd - Généré automatiquement
class_name ThoughtDef
extends Def

@export var developmental_stage_filter: String = ""
@export var do_not_apply_to_quest_lodgers: Array[String] = []
@export var duration_days: Array[String] = []
@export var effect_multiplying_stat: String = ""
@export var game_condition: String = ""
@export var gender: String = ""
@export var hediff: String = ""
@export var icon: String = ""
@export var invert: String = ""
@export var max_cumulated_opinion_offset: float = 0.0
@export var min_expectation: String = ""
@export var min_expectation_for_negative_thought: String = ""
@export var never_nullify_if_any_trait: String = ""
@export var next_thought: String = ""
@export var nullified_if_not_colonist: String = ""
@export var nullifying_genes: Array[String] = []
@export var nullifying_hediffs: Array[String] = []
@export var nullifying_own_tales: Array[String] = []
@export var nullifying_precepts: Array[String] = []
@export var nullifying_trait_degrees: Array[String] = []
@export var nullifying_traits: Array[String] = []
@export var produces_memory_thought: String = ""
@export var replace_thoughts: Array[String] = []
@export var required_traits: Array[String] = []
@export var required_traits_degree: String = ""
@export var show_bubble: String = ""
@export var social_target_developmental_stage_filter: String = ""
@export var stack_limit: int = 0
@export var stack_limit_for_same_other_pawn: String = ""
@export var stacked_effect_multiplier: String = ""
@export var stages: Array[HediffStage] = []
@export var stages_stack: String = ""
@export var tale_def: String = ""
@export var thought_class: Array[String] = []
@export var thought_to_make: String = ""
@export var valid_while_despawned: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
