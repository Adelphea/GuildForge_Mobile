# MainButtonDef.gd - Généré automatiquement
class_name MainButtonDef
extends Def

@export var button_visible: String = ""
@export var can_be_tutor_denied: bool = false
@export var closes_world_view: String = ""
@export var default_hot_key: String = ""
@export var icon_path: String = ""
@export var minimized: String = ""
@export var order: String = ""
@export var tab_window_class: Array[String] = []
@export var valid_with_classic_ideo: String = ""
@export var valid_without_map: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
