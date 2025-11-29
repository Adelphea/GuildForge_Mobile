# Def.gd
# Classe de base pour toutes les définitions de ressources personnalisées (Custom Resources - CR)
# Utilise l'approche de Composition sur Héritage (Hybrid Structure)

class_name Def
extends Resource

## Nom unique de la définition (utilisé pour l'identification et la recherche)
@export var def_name: String = ""

## Label affiché dans le jeu (traduisible)
@export var label: String = ""

## Description détaillée (traduisible)
@export_multiline var description: String = ""

## Liste des propriétés de composants (CompProperties) qui définissent le comportement de cette Def.
## C'est le cœur de l'approche de Composition.
@export var comp_properties: Array[Resource] = []

## Méthode pour obtenir une propriété de composant spécifique par son type.
func get_comp_properties(comp_type: String) -> Resource:
for comp in comp_properties:
if comp is Resource and comp.get_class() == comp_type:
return comp
return null

## Méthode de validation (à implémenter dans les classes dérivées si nécessaire)
func validate():
if def_name.is_empty():
push_error("Def: 'def_name' ne peut pas être vide.")
return false
return true

## Méthode de post-chargement (similaire à PostLoad dans RimWorld)
func post_load():
# Peut être utilisé pour initialiser des données après le chargement du fichier .res
pass
