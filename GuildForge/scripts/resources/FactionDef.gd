# FactionDef.gd - Généré automatiquement
class_name FactionDef
extends Def

@export var allowed_arrival_temperature_range: String = ""
@export var allowed_cultures: Array[String] = []
@export var allowed_memes: Array[String] = []
@export var animals_flee_danger: String = ""
@export var apparel_stuff_filter: String = ""
@export var arrival_layer_whitelist: String = ""
@export var auto_flee: String = ""
@export var backstory_filters: Array[String] = []
@export var base_trader_kinds: Array[String] = []
@export var basic_member_kind: String = ""
@export var can_siege: bool = false
@export var can_stage_attacks: Array[String] = []
@export var can_use_avoid_grid: bool = false
@export var caravan_trader_kinds: Array[String] = []
@export var category_tag: String = ""
@export var classic_ideo: String = ""
@export var color_spectrum: String = ""
@export var configuration_list_order_priority: String = ""
@export var disallowed_memes: Array[String] = []
@export var disallowed_precepts: Array[String] = []
@export var disallowed_raid_age_restrictions: Array[String] = []
@export var drop_pod_active: String = ""
@export var drop_pod_incoming: String = ""
@export var earliest_raid_days: Array[String] = []
@export var faction_icon_path: String = ""
@export var faction_name_maker: String = ""
@export var fixed_leader_kinds: Array[String] = []
@export var fixed_name: String = ""
@export var forageability_factor: float = 0.0
@export var generate_new_leader_from_map_members_only: String = ""
@export var hidden: String = ""
@export var hostile_to_factionless_humanlikes: Array[String] = []
@export var humanlike_faction: String = ""
@export var is_player: bool = false
@export var leader_force_generate_new_pawn: String = ""
@export var leader_title: String = ""
@export var list_order_priority: String = ""
@export var max_configurable_at_world_creation: String = ""
@export var max_pawn_cost_per_total_points_curve: String = ""
@export var min_settlement_temperature_chance_curve: String = ""
@export var must_start_one_enemy: String = ""
@export var pawn_group_makers: Array[String] = []
@export var pawn_singular: String = ""
@export var pawns_plural: String = ""
@export var permanent_enemy: String = ""
@export var permanent_enemy_to_everyone_except: String = ""
@export var raid_commonality_from_points_curve: String = ""
@export var raid_loot_maker: String = ""
@export var raid_loot_value_from_points_curve: String = ""
@export var recipe_prerequisite_tags: Array[String] = []
@export var required_count_at_game_start: String = ""
@export var required_memes: Array[String] = []
@export var royal_favor_icon_path: String = ""
@export var royal_favor_label: String = ""
@export var royal_title_inheritance_relations: Array[String] = []
@export var royal_title_inheritance_worker_class: Array[String] = []
@export var royal_title_tags: Array[String] = []
@export var settlement_generation_weight: String = ""
@export var settlement_name_maker: String = ""
@export var settlement_texture_path: String = ""
@export var starting_count_at_world_creation: String = ""
@export var starting_research_tags: Array[String] = []
@export var starting_techprints_research_tags: Array[String] = []
@export var structure_meme_weights: Array[String] = []
@export var tech_level: String = ""
@export var xenotype_set: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
