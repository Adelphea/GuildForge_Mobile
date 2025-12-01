# CR_Base.gd
# Classe de base pour toutes les Custom Resources (Defs)
extends Resource
class_name CR_Base

# Propriétés de base communes à toutes les Defs
@export var defName: String = ""
@export var label: String = ""
@export var description: String = ""

# Fonction de validation (Règle 4, TDD-01)
func _validate():
    if defName.is_empty():
        push_error("CR Validation Error: Def must have a defName.")

# Fonction pour obtenir le chemin de la ressource
func get_resource_path() -> String:
    return resource_path
