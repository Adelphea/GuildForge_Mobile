# FeatureDef.gd - Généré automatiquement
class_name FeatureDef
extends Def

@export var acceptable_biomes: Array[String] = []
@export var can_touch_world_edge: bool = false
@export var max_passage_width: String = ""
@export var max_pct_of_whole_area: String = ""
@export var max_root_group_size: String = ""
@export var max_size: String = ""
@export var max_space_between_root_groups: Array[String] = []
@export var min_root_group_size: String = ""
@export var min_root_groups_in_cluster: String = ""
@export var min_size: String = ""
@export var name_maker: String = ""
@export var order: String = ""
@export var root_biomes: Array[String] = []
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
