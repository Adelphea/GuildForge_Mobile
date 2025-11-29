# RecipeDef.gd
# Définition de base pour les recettes d'artisanat.

class_name RecipeDef
extends Def

## Liste des ingrédients requis (chaque élément est un dictionnaire {def_name: String, count: int})
@export var ingredients: Array[Dictionary] = []

## Produit final (dictionnaire {def_name: String, count: int})
@export var product: Dictionary = {}

## Temps de travail requis (en secondes)
@export var work_amount: float = 10.0

## Compétence requise pour la recette (e.g., "Smithing", "Cooking")
@export var skill_required: String = ""

## Niveau de compétence minimum requis
@export var skill_level_required: int = 0

## Méthode de validation spécifique à RecipeDef
func validate():
if not super.validate():
return false
if ingredients.is_empty():
push_error("RecipeDef: 'ingredients' ne peut pas être vide.")
return false
if product.is_empty() or not product.has("def_name") or not product.has("count"):
push_error("RecipeDef: 'product' est invalide.")
return false
return true
