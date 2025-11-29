# JobDef.gd - Généré automatiquement
class_name JobDef
extends Def

@export var allow_opportunistic_prefix: String = ""
@export var always_show_report: String = ""
@export var always_show_weapon: String = ""
@export var carry_thing_after_job: String = ""
@export var casual_interruptible: String = ""
@export var check_override_on_damage: String = ""
@export var collide_with_pawns: Array[String] = []
@export var display_as_area_in_float_menu: String = ""
@export var driver_class: String = ""
@export var drop_thing_before_job: String = ""
@export var if_flying_keep_flying: String = ""
@export var is_crawling_if_downed: bool = false
@export var is_idle: bool = false
@export var joy_duration: String = ""
@export var joy_kind: String = ""
@export var joy_max_participants: Array[String] = []
@export var joy_skill: String = ""
@export var joy_xp_per_tick: String = ""
@export var make_target_prisoner: String = ""
@export var never_flee_from_enemies: Array[String] = []
@export var never_show_weapon: String = ""
@export var override_fly_chance: float = 0.0
@export var player_interruptible: String = ""
@export var report_string: String = ""
@export var suspendable: bool = false
@export var tale_on_completion: String = ""
@export var try_start_flying: String = ""
@export var wait_after_arriving: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
