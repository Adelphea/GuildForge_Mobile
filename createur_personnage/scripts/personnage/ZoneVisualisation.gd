extends Control

var orientation: int = 0 # 0: Sud, 1: Est, 2: Nord, 3: Ouest

func pivoter(direction: int):
	orientation = (orientation + direction + 4) % 4
	_appliquer_orientation()

func _appliquer_orientation():
	var calques = $Personnage/Calques
	match orientation:
		0: # Sud
			calques.scale.x = 1
			# Charger textures Sud
		1: # Est
			calques.scale.x = 1
			# Charger textures Est
		2: # Nord
			calques.scale.x = 1
			# Charger textures Nord
		3: # Ouest
			calques.scale.x = -1
			# Charger textures Est (miroir)

func mettre_a_jour_apparence(categorie: String, texture: Texture2D):
	var sprite = $Personnage/Calques.get_node_or_null(categorie)
	if sprite:
		sprite.texture = texture
