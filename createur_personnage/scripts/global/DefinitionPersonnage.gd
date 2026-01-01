extends Resource
class_name DefinitionPersonnage

@export_group("Identité")
@export var nom: String = ""
@export var prenom: String = ""
@export var surnom: String = ""
@export var age: int = 20
@export var sexe: String = "♂"
@export var xenotype: String = "Humain"

@export_group("Compétences")
@export var competences: Dictionary = {} # Nom -> Competence resource

@export_group("Apparence")
@export var apparence: Dictionary = {} # Categorie -> Sous-Categorie -> Texture Path
