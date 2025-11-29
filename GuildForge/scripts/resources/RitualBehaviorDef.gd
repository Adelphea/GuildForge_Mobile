# RitualBehaviorDef.gd - Généré automatiquement
class_name RitualBehaviorDef
extends Def

@export var cancellation_triggers: Array[String] = []
@export var duration_ticks: Array[String] = []
@export var letter_text: String = ""
@export var letter_title: String = ""
@export var max_enhancer_distance: String = ""
@export var precept_requirements: Array[String] = []
@export var roles: Array[String] = []
@export var sound_defs_per_enhancer_count: int = 0
@export var spectator_filter: String = ""
@export var spectator_gerund: String = ""
@export var spectators_label: String = ""
@export var stages: Array[HediffStage] = []
@export var use_visual_effects_from_role_id_ideo: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
