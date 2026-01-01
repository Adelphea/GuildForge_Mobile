extends Control

signal page_changee(index: int)

@onready var pages = $Pages

func _ready():
	$BoutonsViolets/BoutonIdentite.pressed.connect(_on_page_pressed.bind(0))
	$BoutonsViolets/BoutonCompetences.pressed.connect(_on_page_pressed.bind(1))
	$BoutonsViolets/BoutonRelations.pressed.connect(_on_page_pressed.bind(2))

func _on_page_pressed(index: int):
	for i in range(pages.get_child_count()):
		pages.get_child(i).visible = (i == index)
	page_changee.emit(index)

func mettre_a_jour(personnage: DefinitionPersonnage):
	# Logique de remplissage des champs à partir de la ressource
	pass
