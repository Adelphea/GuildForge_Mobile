# TraitDef.gd
# Définition de base pour les traits de caractère (Traits) des personnages.

class_name TraitDef
extends Def

## Catégorie du trait (e.g., "Personality", "Physical", "Skill")
@export var category: String = "Personality"

## Modificateurs de statistiques associés à ce trait (e.g., {"WorkSpeed": 0.2, "MeleeDamage": -0.1})
@export var stat_modifiers: Dictionary = {}

## Effets spéciaux (e.g., "ImmunityToDisease", "AlwaysHappy")
@export var special_effects: Array[String] = []

## Méthode de validation spécifique à TraitDef
func validate():
if not super.validate():
return false
if category.is_empty():
push_error("TraitDef: 'category' ne peut pas être vide.")
return false
return true
