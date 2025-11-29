# FleckDef.gd - Généré automatiquement
class_name FleckDef
extends Def

@export var acceleration: String = ""
@export var altitude_layer_inc_offset: float = 0.0
@export var arch_curve: String = ""
@export var arch_duration: String = ""
@export var arch_height: String = ""
@export var attached_to_head: String = ""
@export var fade_in_time: String = ""
@export var fade_out_time: String = ""
@export var fleck_system_class: Array[String] = []
@export var graphic_data: String = ""
@export var growth_rate: float = 0.0
@export var land_sound: String = ""
@export var random_graphics: Array[String] = []
@export var real_time: String = ""
@export var scalers: Array[String] = []
@export var scaling_anchor: String = ""
@export var solid_time: String = ""
@export var speed_per_time: String = ""
@export var unattached_draw_offset: float = 0.0

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
