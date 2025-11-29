# PawnCapacityDef.gd - Généré automatiquement
class_name PawnCapacityDef
extends Def

@export var label_anomaly_entity: String = ""
@export var label_drones: Array[String] = []
@export var label_mechanoids: Array[String] = []
@export var lethal_flesh: String = ""
@export var lethal_mechanoids: Array[String] = []
@export var list_order: int = 0
@export var min_for_capable: bool = false
@export var min_value: String = ""
@export var show_on_animals: Array[String] = []
@export var show_on_anomaly_entities: Array[String] = []
@export var show_on_caravan_health_tab: String = ""
@export var show_on_drones: Array[String] = []
@export var show_on_mechanoids: Array[String] = []
@export var worker_class: String = ""
@export var zero_if_cannot_be_awake: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
