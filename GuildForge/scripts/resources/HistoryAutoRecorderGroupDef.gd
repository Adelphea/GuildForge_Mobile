# HistoryAutoRecorderGroupDef.gd - Généré automatiquement
class_name HistoryAutoRecorderGroupDef
extends Def

@export var dev_mode_only: String = ""
@export var fixed_scale: String = ""
@export var history_auto_recorder_defs: Array[String] = []
@export var integers_only: String = ""
@export var only_positive_values: Array[String] = []
@export var use_fixed_scale: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
