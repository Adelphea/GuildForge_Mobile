# ExpansionDef.gd - Généré automatiquement
class_name ExpansionDef
extends Def

@export var background_path: String = ""
@export var icon_path: String = ""
@export var is_core: bool = false
@export var linked_mod: String = ""
@export var not_owned_icon_path: String = ""
@export var preview_images_folder_path: String = ""
@export var primary_color: String = ""
@export var site_url: String = ""
@export var steam_url: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
