# CompProperties.gd
# Classe de base pour toutes les propriétés de composants (CompProperties)
# Ces ressources sont utilisées pour définir les données spécifiques d'un composant.

class_name CompProperties
extends Resource

## Méthode de validation (à implémenter dans les classes dérivées si nécessaire)
func validate():
return true

## Méthode de post-chargement
func post_load():
pass
