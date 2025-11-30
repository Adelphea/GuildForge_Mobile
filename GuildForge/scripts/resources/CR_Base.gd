# CR_Base.gd
# Classe de base abstraite pour toutes les Custom Resources (Defs) du jeu.
# Assure le typage statique strict et l'interface commune pour le DefManager.

class_name CR_Base
extends Resource

# --- Propriétés Obligatoires (Héritées de l'XML) ---

## Le DefName (ID unique) est obligatoire pour toutes les Defs.
@export var def_id: String = ""

## Le label (nom affiché) est obligatoire.
@export var label: String = ""

## La description est obligatoire.
@export var description: String = ""

# --- Méthodes de l'Interface ---

## Méthode de validation interne. Doit être appelée par le DefManager après chargement.
## Les classes dérivées doivent surcharger cette méthode pour implémenter leur propre logique de validation.
func _validate() -> bool:
    if def_id.is_empty():
        push_error("CR_Base: 'def_id' est vide pour la ressource: ", self.resource_path)
        return false
    if label.is_empty():
        push_warning("CR_Base: 'label' est vide pour la ressource: ", def_id)
    
    # Validation de base réussie
    return true

## Retourne une chaîne de caractères pour le débogage.
func _to_string() -> String:
    return "CR_Base(ID: %s, Label: %s)" % [def_id, label]
