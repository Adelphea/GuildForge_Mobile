# BackstoryDef.gd - Généré automatiquement
class_name BackstoryDef
extends Def

@export var body_type_female: String = ""
@export var body_type_global: String = ""
@export var body_type_male: String = ""
@export var disallowed_traits: Array[String] = []
@export var forced_traits: Array[String] = []
@export var identifier: String = ""
@export var ignore_illegal_label_character_config_error: String = ""
@export var possessions: Array[String] = []
@export var required_work_tags: Array[String] = []
@export var requires_spawn_category: String = ""
@export var shuffleable: bool = false
@export var skill_gains: Array[String] = []
@export var slot: String = ""
@export var spawn_categories: Array[String] = []
@export var title: String = ""
@export var title_female: String = ""
@export var title_short: String = ""
@export var title_short_female: String = ""
@export var work_disables: Array[String] = []

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
