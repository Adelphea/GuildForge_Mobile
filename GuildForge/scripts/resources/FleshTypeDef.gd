# FleshTypeDef.gd - Généré automatiquement
class_name FleshTypeDef
extends Def

@export var bandaged_wounds: Array[String] = []
@export var corpse_category: String = ""
@export var damage_effecter: String = ""
@export var generic_wounds: Array[String] = []
@export var hediff_wounds: Array[String] = []
@export var is_organic: bool = false

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
