# PrisonerInteractionModeDef.gd - Généré automatiquement
class_name PrisonerInteractionModeDef
extends Def

@export var allow_in_classic_ideo_mode: String = ""
@export var allow_on_wild_man: String = ""
@export var hide_if_not_recruitable: bool = false
@export var is_child_interaction: bool = false
@export var list_order: int = 0
@export var must_be_awake: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
