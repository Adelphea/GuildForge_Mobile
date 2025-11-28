# CompProperties_Storable.gd
# Propriétés de composant pour les objets qui peuvent être stockés dans un inventaire ou un entrepôt.

class_name CompProperties_Storable
extends CompProperties

## Taille de l'objet dans l'inventaire (en unités de volume ou de poids)
@export var stack_limit: int = 1

## Indique si l'objet peut être empilé
@export var is_stackable: bool = false

## Indique si l'objet est périssable
@export var is_perishable: bool = false

## Méthode de validation spécifique
func validate():
if stack_limit < 1:
push_error("CompProperties_Storable: 'stack_limit' doit être supérieur ou égal à 1.")
return false
if is_stackable and stack_limit == 1:
push_error("CompProperties_Storable: 'is_stackable' est vrai mais 'stack_limit' est 1. Définissez une limite d'empilement supérieure.")
return false
return true
