# DesignationDef.gd - Généré automatiquement
class_name DesignationDef
extends Def

@export var designate_cancelable: bool = false
@export var remove_if_building_despawned: String = ""
@export var should_batch_draw: String = ""
@export var target_type: String = ""
@export var texture_path: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
