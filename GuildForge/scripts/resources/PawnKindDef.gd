# PawnKindDef.gd - Généré automatiquement
class_name PawnKindDef
extends Def

@export var abilities: Array[String] = []
@export var accept_arrest_chance_factor: float = 0.0
@export var allow_royal_apparel_requirements: Array[String] = []
@export var allow_royal_room_requirements: Array[String] = []
@export var alternate_graphic_chance: float = 0.0
@export var alternate_graphics: Array[String] = []
@export var apparel_allow_headgear_chance: float = 0.0
@export var apparel_color: String = ""
@export var apparel_disallow_tags: Array[String] = []
@export var apparel_ignore_pollution: String = ""
@export var apparel_ignore_seasons: Array[String] = []
@export var apparel_money: String = ""
@export var apparel_required: String = ""
@export var apparel_tags: Array[String] = []
@export var backstory_cryptosleep_commonality: String = ""
@export var backstory_filters: Array[String] = []
@export var backstory_filters_override: String = ""
@export var biocode_weapon_chance: float = 0.0
@export var can_arrive_manhunter: bool = false
@export var can_be_sapper: bool = false
@export var chemical_addiction_chance: float = 0.0
@export var combat_enhancing_drugs_chance: float = 0.0
@export var combat_enhancing_drugs_count: int = 0
@export var combat_power: String = ""
@export var default_faction_def: String = ""
@export var defend_point_radius: Array[String] = []
@export var disallowed_traits: Array[String] = []
@export var eco_system_weight: String = ""
@export var faction_hostile_on_death: String = ""
@export var faction_leader: String = ""
@export var favorite_color: String = ""
@export var flying_animation_draw_size: String = ""
@export var flying_animation_draw_size_is_multiplier: String = ""
@export var flying_animation_frame_count: int = 0
@export var flying_animation_frame_path_prefix: String = ""
@export var flying_animation_frame_path_prefix_female: String = ""
@export var flying_animation_inherit_colors: Array[String] = []
@export var flying_animation_ticks_per_frame: String = ""
@export var force_normal_gear_quality: String = ""
@export var gear_health_range: String = ""
@export var human_pregnancy_chance: float = 0.0
@export var ignore_ideo_apparel_colors: Array[String] = []
@export var initial_resistance_range: String = ""
@export var initial_will_range: String = ""
@export var inv_food_def: String = ""
@export var inv_nutrition: String = ""
@export var inventory_options: Array[String] = []
@export var is_fighter: bool = false
@export var is_good_breacher: bool = false
@export var item_quality: String = ""
@export var label_female: String = ""
@export var label_female_plural: String = ""
@export var label_male: String = ""
@export var label_plural: String = ""
@export var life_stages: Array[LifeStageDef] = []
@export var max_generation_age: String = ""
@export var min_generation_age: String = ""
@export var min_title_required: String = ""
@export var race: String = ""
@export var required_work_tags: Array[String] = []
@export var royal_title_chance: float = 0.0
@export var skills: Array[SkillRecord] = []
@export var specific_apparel_requirements: Array[String] = []
@export var style_item_tags: Array[StyleItemTag] = []
@export var tech_hediffs_chance: float = 0.0
@export var tech_hediffs_disallow_tags: Array[String] = []
@export var tech_hediffs_max_amount: String = ""
@export var tech_hediffs_money: String = ""
@export var tech_hediffs_required: String = ""
@export var tech_hediffs_tags: Array[String] = []
@export var title_required: String = ""
@export var title_select_one: String = ""
@export var trader: String = ""
@export var use_faction_xenotypes: Array[String] = []
@export var weapon_money: String = ""
@export var weapon_tags: Array[String] = []
@export var wild_group_size: String = ""
@export var xenotype_set: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
