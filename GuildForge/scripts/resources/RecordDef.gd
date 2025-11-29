# RecordDef.gd - Généré automatiquement
class_name RecordDef
extends Def

@export var display_order: int = 0
@export var measured_time_jobs: Array[String] = []
@export var type: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
