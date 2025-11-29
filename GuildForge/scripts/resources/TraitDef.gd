# TraitDef.gd - Généré automatiquement
class_name TraitDef
extends Def

@export var allowOnHostileSpawn: bool = false
@export var commonality: Variant = null
@export var commonalityFemale: Variant = null
@export var conflictingPassions: Array[Resource] = []
@export var conflictingTraits: Array[Resource] = []
@export var defName: String = ""
@export var degreeDatas: Array[Resource] = []
@export var disabledWorkTags: Array[String] = []
@export var exclusionTags: Array[String] = []
@export var forcedPassions: Array[Resource] = []
@export var requiredWorkTags: Array[String] = []

# --- Méthodes ---
func validate() -> void:
    # Validation spécifique à ce DefType
    if def_name.is_empty():
        push_error(f"[{deftype}] def_name est vide.")
    # TODO: Ajouter la logique de validation spécifique ici
    pass
