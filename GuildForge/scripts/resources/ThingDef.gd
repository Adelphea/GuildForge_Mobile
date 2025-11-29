# ThingDef.gd
# Définition de base pour les objets physiques (Things) dans le jeu.

class_name ThingDef
extends Def

## Chemin vers la scène Godot (.tscn) à instancier pour cet objet.
@export_file("*.tscn") var graphic_path: String = ""

## Catégorie de l'objet (e.g., Item, Building, Pawn)
@export var category: String = "Item"

## Méthode de validation spécifique à ThingDef
func validate():
if not super.validate():
return false
if graphic_path.is_empty():
push_error("ThingDef: 'graphic_path' ne peut pas être vide.")
return false
return true
