# RitualAttachableOutcomeEffectDef.gd - Généré automatiquement
class_name RitualAttachableOutcomeEffectDef
extends Def

@export var disallowed_rituals: Array[String] = []
@export var effect_desc: String = ""
@export var letter_info_text: String = ""
@export var required_faction: String = ""
@export var required_meme_any: String = ""
@export var worker_class: String = ""

# --- Méthodes de Validation et Logique ---
func validate() -> void:
	# Méthode de validation pour s'assurer de la cohérence des données
	pass
