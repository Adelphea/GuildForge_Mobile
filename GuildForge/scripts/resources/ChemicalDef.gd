# ChemicalDef.gd - Généré automatiquement
class_name ChemicalDef
extends Def

@export var addiction_hediff: String = ""
@export var can_binge: bool = false
@export var gene_overdose_chance_factor_immune: String = ""
@export var gene_overdose_chance_factor_resist: String = ""
@export var gene_tolerance_buildup_factor_immune: String = ""
@export var gene_tolerance_buildup_factor_resist: String = ""
@export var generate_addiction_genes: Array[String] = []
@export var on_generated_addicted_events: Array[String] = []
@export var on_generated_addicted_tolerance_chance: float = 0.0
@export var tolerance_hediff: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
