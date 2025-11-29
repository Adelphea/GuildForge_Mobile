# RitualOutcomeEffectDef.gd - Généré automatiquement
class_name RitualOutcomeEffectDef
extends Def

@export var allow_attachable_outcome: String = ""
@export var effecter: Effecter = null
@export var extra_info_lines: Array[String] = []
@export var extra_predicted_outcome_descriptions: Array[String] = []
@export var filth_count_to_spawn: String = ""
@export var filth_def_to_spawn: String = ""
@export var fleck_def: String = ""
@export var fleck_scale_range: String = ""
@export var fleck_velocity_angle: String = ""
@export var fleck_velocity_speed: String = ""
@export var flecks_per_cell: String = ""
@export var gives_development_points: Array[String] = []
@export var honor_from_quality: String = ""
@export var max_quality: String = ""
@export var min_quality: String = ""
@export var outcome_chances: Array[String] = []
@export var starting_quality: String = ""
@export var warn_on_low_quality: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
