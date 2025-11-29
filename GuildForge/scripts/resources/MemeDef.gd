# MemeDef.gd - Généré automatiquement
class_name MemeDef
extends Def

@export var add_designator_groups: Array[String] = []
@export var add_designators: Array[String] = []
@export var agreeable_traits: Array[String] = []
@export var allow_during_tutorial: String = ""
@export var allow_symbols_from_deity: String = ""
@export var apparel_requirements: Array[String] = []
@export var category: String = ""
@export var consumable_buildings: Array[String] = []
@export var deity_count: int = 0
@export var deity_name_maker_override: String = ""
@export var deity_type_maker_override: String = ""
@export var description_maker: String = ""
@export var disagreeable_traits: Array[String] = []
@export var exclusion_tags: Array[String] = []
@export var fixed_deity_name_types: Array[String] = []
@export var general_rules: Array[String] = []
@export var group_def: String = ""
@export var icon_path: String = ""
@export var impact: String = ""
@export var preferred_weapon_classes: Array[String] = []
@export var prevent_apparel_requirements: Array[String] = []
@export var randomization_selection_weight_factor: float = 0.0
@export var render_order: int = 0
@export var replace_rituals_with_tags: Array[String] = []
@export var replacement_patterns: Array[String] = []
@export var require_any_ritual_seat: String = ""
@export var require_one: String = ""
@export var required_rituals: Array[String] = []
@export var rituals_to_make: String = ""
@export var select_one_or_none: String = ""
@export var starting_research_projects: Array[String] = []
@export var style_item_tags: Array[StyleItemTag] = []
@export var symbol_pack_override: String = ""
@export var symbol_packs: Array[String] = []
@export var thing_style_categories: Array[ThingStyleCategoryDef] = []
@export var venerated_animals_count_offset: float = 0.0
@export var venerated_animals_count_override: String = ""
@export var worship_room_label: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
