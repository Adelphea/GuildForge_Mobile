# CR_CompProperties.gd
# Classe de base abstraite pour toutes les CompProperties (Composants de Propriétés)
# Utilisée pour implémenter la Composition over Inheritance.

class_name CR_CompProperties
extends Resource

# --- Propriétés Obligatoires ---

## Le nom de la classe de composant qui utilisera ces propriétés.
## Ex: "CompProperties_Storable" dans le XML devient "CR_CompStorable" dans le code.
@export var comp_class_name: String = ""

# --- Méthodes de l'Interface ---

## Méthode de validation interne.
## Les classes dérivées doivent surcharger cette méthode pour implémenter leur propre logique de validation.
func _validate() -> bool:
    if comp_class_name.is_empty():
        push_error("CR_CompProperties: 'comp_class_name' est vide pour la ressource: ", self.resource_path)
        return false
    
    # Validation de base réussie
    return true
