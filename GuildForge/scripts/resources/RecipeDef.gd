class_name RecipeDef
extends Def

# Contenu minimal pour RecipeDef
@export var work_amount: float = 0.0
@export var ingredients: Array[ThingDefCountClass] = []

func validate() -> void:
super.validate()
