# CultureDef.gd - Généré automatiquement
class_name CultureDef
extends Def

@export var allowed_place_tags: Array[String] = []
@export var deity_name_maker: NameMaker = null
@export var deity_type_maker: NameMaker = null
@export var festival_name_maker: NameMaker = null
@export var icon_path: String = ""
@export var ideo_name_maker: String = ""
@export var leader_title_maker: NameMaker = null
@export var pawn_name_maker: NameMaker = null
@export var pawn_name_maker_female: NameMaker = null
@export var preferred_weapon_classes: Array[String] = []
@export var style_item_tags: Array[StyleItemTag] = []
@export var thing_style_categories: Array[ThingStyleCategoryDef] = []

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
