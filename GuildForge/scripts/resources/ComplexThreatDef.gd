# ComplexThreatDef.gd - Généré automatiquement
class_name ComplexThreatDef
extends Def

@export var allow_passive: String = ""
@export var faction: String = ""
@export var fallback_to_room_entered_trigger: String = ""
@export var min_points: Array[String] = []
@export var post_spawn_passive_threat_factor: float = 0.0
@export var signal_action_ambush_type: String = ""
@export var spawn_around_complex: String = ""
@export var spawn_in_other_room_chance: float = 0.0
@export var use_drop_pods: Array[String] = []
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
