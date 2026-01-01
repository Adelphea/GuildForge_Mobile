extends Control

@onready var info = $PanneauInformation
@onready var catalogue = $PanneauCatalogue
@onready var visuel = $ZoneVisualisation

var personnage_actuel: DefinitionPersonnage

func _ready():
	personnage_actuel = DefinitionPersonnage.new()
	_connecter_signaux()

func _connecter_signaux():
	$FlecheGauche.pressed.connect(func(): visuel.pivoter(-1))
	$FlecheDroite.pressed.connect(func(): visuel.pivoter(1))
	
	info.page_changee.connect(_on_page_info_changee)
	# catalogue.item_selectionne.connect(_on_item_catalogue_selectionne)

func _on_page_info_changee(index: int):
	print("Page info changée: ", index)

func _on_item_catalogue_selectionne(categorie: String, texture: Texture2D):
	visuel.mettre_a_jour_apparence(categorie, texture)
	personnage_actuel.apparence[categorie] = texture.resource_path
