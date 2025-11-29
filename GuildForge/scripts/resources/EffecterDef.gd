# EffecterDef.gd - Généré automatiquement
class_name EffecterDef
extends Def

@export var children: EffecterChild = null
@export var maintain_ticks: Array[String] = []
@export var offset_towards_target: String = ""
@export var position_radius: Array[String] = []

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
