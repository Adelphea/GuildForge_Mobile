# AbilityDef.gd - Généré automatiquement
class_name AbilityDef
extends Def

@export var can_use_aoe_to_get_targets: Array[String] = []
@export var caster_must_be_capable_of_violence: String = ""
@export var confirmation_dialog_text: String = ""
@export var cooldown_ticks_range: String = ""
@export var disable_gizmo_while_undrafted: String = ""
@export var display_gizmo_while_undrafted: String = ""
@export var emission_interval: String = ""
@export var emitted_fleck: String = ""
@export var gizmo_class: Array[String] = []
@export var group_def: String = ""
@export var has_externally_handled_cooldown: bool = false
@export var hostile: String = ""
@export var hot_key: String = ""
@export var icon_path: String = ""
@export var job_def: String = ""
@export var level: String = ""
@export var override_group_cooldown: String = ""
@export var required_memes: Array[String] = []
@export var send_message_on_cooldown_complete: String = ""
@export var show_casting_progress_bar: String = ""
@export var show_gizmo_on_world_view: String = ""
@export var show_psycast_effects: Array[String] = []
@export var show_when_drafted: String = ""
@export var stat_bases: Array[StatModifier] = []
@export var stun_target_while_casting: String = ""
@export var target_required: String = ""
@export var target_world_cell: String = ""
@export var ui_order: int = 0
@export var verb_properties: Array[String] = []
@export var warmup_mote: String = ""
@export var warmup_mote_social_symbol: String = ""
@export var warmup_pre_end_sound: String = ""
@export var warmup_pre_end_sound_seconds: Array[String] = []
@export var warmup_sound: String = ""
@export var warmup_start_sound: String = ""
@export var write_combat_log: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
