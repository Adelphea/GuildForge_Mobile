# BodyPartDef.gd - Généré automatiquement
class_name BodyPartDef
extends Def

@export var alive: String = ""
@export var beauty_related: String = ""
@export var bleed_rate: float = 0.0
@export var can_be_vacuum_burnt: bool = false
@export var can_scarify: bool = false
@export var can_suggest_amputation: bool = false
@export var conceptual: String = ""
@export var delicate: String = ""
@export var destroyable_by_damage: String = ""
@export var execution_part_priority: String = ""
@export var force_always_removable: bool = false
@export var frostbite_vulnerability: String = ""
@export var hit_chance_factors: Array[String] = []
@export var hit_points: Array[String] = []
@export var label_short: String = ""
@export var pawn_generator_can_amputate: String = ""
@export var permanent_injury_chance_factor: float = 0.0
@export var remove_recipe_label_override: String = ""
@export var skin_covered: String = ""
@export var socketed: String = ""
@export var solid: String = ""
@export var spawn_thing_on_removed: String = ""
@export var tags: Array[String] = []

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
