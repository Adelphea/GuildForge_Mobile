extends Resource
class_name Competence

@export var nom: String = ""
@export var niveau: int = 0:
	set(val):
		niveau = clampi(val, 0, 20)
@export var attrait: int = 0 # 0: aucun, 1: simple, 2: passion
