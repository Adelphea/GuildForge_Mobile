# RoyalTitlePermitDef.gd - Généré automatiquement
class_name RoyalTitlePermitDef
extends Def

@export var cooldown_days: Array[String] = []
@export var faction: String = ""
@export var layer_blacklist: String = ""
@export var min_title: String = ""
@export var permit_point_cost: String = ""
@export var prerequisite: String = ""
@export var royal_aid: String = ""
@export var ui_position: String = ""
@export var usable_on_world_map: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
