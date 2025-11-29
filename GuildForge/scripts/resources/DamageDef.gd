# DamageDef.gd - Généré automatiquement
class_name DamageDef
extends Def

@export var additional_hediffs: Array[HediffDef] = []
@export var apply_additional_hediffs_if_hunting_for_food: String = ""
@export var armor_category: String = ""
@export var blunt_inner_hit_chance: float = 0.0
@export var blunt_inner_hit_damage_fraction_to_add: String = ""
@export var blunt_inner_hit_damage_fraction_to_convert: String = ""
@export var blunt_stun_chance_per_damage_pct_of_core_part_to_body_curve: String = ""
@export var blunt_stun_chance_per_damage_pct_of_core_part_to_head_curve: String = ""
@export var blunt_stun_duration: String = ""
@export var building_damage_factor: float = 0.0
@export var building_damage_factor_impassable: bool = false
@export var building_damage_factor_passable: bool = false
@export var can_interrupt_jobs: Array[String] = []
@export var can_use_deflect_metal_effect: bool = false
@export var cause_stun: String = ""
@export var combat_log_rules: Array[CombatLogRules] = []
@export var considered_helpful: String = ""
@export var corpse_damage_factor: float = 0.0
@export var cut_cleave_bonus: Array[String] = []
@export var cut_extra_targets_curve: String = ""
@export var damage_effecter: String = ""
@export var death_message: String = ""
@export var default_armor_penetration: String = ""
@export var default_damage: String = ""
@export var default_stopping_power: String = ""
@export var execution: String = ""
@export var explosion_affect_outside_parts_only: String = ""
@export var explosion_cell_fleck: String = ""
@export var explosion_color_center: Color = null
@export var explosion_color_edge: Color = null
@export var explosion_heat_energy_per_cell: String = ""
@export var explosion_interior_fleck: String = ""
@export var explosion_snow_melt_amount: String = ""
@export var expolosion_propagation_speed: String = ""
@export var external_violence: String = ""
@export var external_violence_for_mechanoids: Array[String] = []
@export var harm_all_layers_until_outside: String = ""
@export var harms_health: String = ""
@export var has_forceful_impact: bool = false
@export var hediff: String = ""
@export var hediff_skin: String = ""
@export var hediff_solid: String = ""
@export var impact_sound_type: String = ""
@export var is_explosive: bool = false
@export var is_ranged: bool = false
@export var makes_animals_flee: String = ""
@export var makes_blood: String = ""
@export var min_damage_to_fragment: String = ""
@export var overkill_pct_to_destroy_part: String = ""
@export var plant_damage_factor: float = 0.0
@export var scale_damage_to_buildings_based_on_flammability: String = ""
@export var scratch_split_percentage: String = ""
@export var sound_explosion: String = ""
@export var stab_chance_of_forced_internal: String = ""
@export var stun_adaptation_ticks: Array[String] = []
@export var stun_resist_stat: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
