# SoundDef.gd - Généré automatiquement
class_name SoundDef
extends Def

@export var context: String = ""
@export var max_simultaneous: Array[String] = []
@export var max_voices: Array[String] = []
@export var priority_mode: String = ""
@export var slot: String = ""
@export var sub_sounds: Array[String] = []
@export var sustain: String = ""
@export var sustain_fadeout_time: String = ""
@export var sustain_start_sound: String = ""
@export var sustain_stop_sound: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
