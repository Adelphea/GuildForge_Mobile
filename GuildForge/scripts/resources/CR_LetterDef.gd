# CR_LetterDef.gd
# Hérite de CR_Base (à créer)
extends Resource
class_name CR_LetterDef

# --- Propriétés de base (à compléter) ---
@export var defName: String = ""
@export var label: String = ""
@export var description: String = ""

# --- Propriétés spécifiques (à compléter par introspection XML) ---
# Exemple : @export var statBases: Array[CR_StatModifier] = []

# Fonction de validation (Règle 4, TDD-01)
func _validate():
    if defName.is_empty():
        push_error("CR Validation Error: CR_LetterDef must have a defName.")