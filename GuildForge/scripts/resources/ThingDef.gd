class_name ThingDef
extends Def

# Contenu minimal pour ThingDef
@export var thing_class: String = "Thing"
@export var category: String = "Item"

func validate() -> void:
super.validate()
