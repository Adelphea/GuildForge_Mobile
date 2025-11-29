# 50 Propositions d'Amélioration pour le Projet GuildForge_Mobile (V2)

Suite à la régénération complète des 188 DefTypes et à l'adoption de la stratégie de **Fidélité Maximale** (classes de types complexes vides), ces propositions sont adaptées à la nouvelle structure de code.

## Catégorie 1 : Amélioration de la Fonctionnalité et de la Fiabilité (Priorité Haute)

1.  **Validation des Types Complexes Vides :** Valider les propriétés suggérées dans `coquilles_vides_a_verifier.md` et les intégrer manuellement aux 18 classes de types complexes pour permettre la sérialisation XML.
2.  **Implémentation du Chargement XML :** Créer une classe `XmlLoader.gd` pour lire les fichiers XML de RimWorld et instancier les classes `Def` et `Resource` générées.
3.  **Gestion des Erreurs de Typage :** Ajouter des vérifications de type dans le constructeur de `Def.gd` pour s'assurer que les valeurs chargées du XML correspondent aux types `@export var` (ex: vérifier si une chaîne est chargée dans un `float`).
4.  **Gestion des Héritages XML :** Implémenter la logique de `ParentName` dans le chargeur XML pour que les `Def` héritent correctement des propriétés de leurs parents.
5.  **Gestion des Listes Vides :** Dans le script de génération, initialiser les `Array` à `[]` au lieu de `null` pour éviter les erreurs lors de l'ajout d'éléments.
6.  **Optimisation des Imports :** Utiliser des chemins d'importation relatifs (`res://`) dans les fichiers `.gd` pour améliorer la portabilité.
7.  **Gestion des Enums :** Identifier les propriétés qui sont des chaînes mais qui représentent des Enums (ex: `DamageDef.workerClass`) et créer des fichiers `Enum_*.gd` pour une meilleure typographie.
8.  **Implémentation de la Méthode `PostLoad()` :** Ajouter une méthode `post_load()` dans `Def.gd` pour permettre aux classes enfants d'exécuter une logique après le chargement des données.
9.  **Gestion des Références Circulaires :** Mettre en place un système de résolution des références (ex: `ThingDef` référence `HediffDef` qui référence `ThingDef`) après le chargement initial.
10. **Ajout de Documentation :** Ajouter des commentaires JSDoc/GDScript aux propriétés `@export var` pour décrire leur fonction (en utilisant le nom de la propriété comme indice).

## Catégorie 2 : Amélioration de la Structure et de la Maintenabilité (Priorité Moyenne)

11. **Refonte du Script de Génération :** Convertir le script `generate_gdscript.py` en un outil de ligne de commande plus robuste avec des arguments pour la régénération de groupes spécifiques ou de fichiers uniques.
12. **Séparation des CompProperties :** Créer un dossier séparé pour les `CompProperties` afin de mieux organiser les ressources.
13. **Création d'un Fichier de Mappage :** Créer un fichier `type_mapping.json` pour externaliser l'heuristique de typage, facilitant ainsi les corrections futures.
14. **Ajout de Tests Unitaires :** Écrire des tests unitaires pour le chargeur XML et pour quelques DefTypes complexes (ex: `ThingDef`) afin de garantir la cohérence des données.
15. **Standardisation des Noms de Fichiers :** S'assurer que tous les noms de fichiers suivent la convention `PascalCase.gd`.
16. **Ajout de la Licence :** Ajouter un en-tête de licence (ex: MIT) à tous les fichiers générés.
17. **Utilisation de `const` pour les Valeurs Statiques :** Identifier les propriétés qui sont des valeurs statiques et les convertir en `const` dans les classes GDScript.
18. **Création d'un `DefManager.gd` :** Une classe singleton pour gérer l'accès à toutes les Defs chargées, agissant comme un cache global.
19. **Gestion des Valeurs par Défaut :** S'assurer que les valeurs par défaut des `@export var` correspondent aux valeurs par défaut de RimWorld (ex: `bool` à `false`, `int` à `0`).
20. **Utilisation des `Dictionary` pour les Mappages :** Identifier les propriétés qui sont des listes de paires clé-valeur dans le XML et les convertir en `Dictionary` GDScript pour un accès plus rapide.

## Catégorie 3 : Amélioration de l'Expérience Utilisateur (Priorité Basse)

21. **Intégration de l'Éditeur Godot :** Utiliser les annotations Godot (`@tool`) pour afficher les Defs directement dans l'éditeur.
22. **Création d'un Dock d'Inspection :** Développer un dock personnalisé dans Godot pour visualiser les propriétés des Defs chargées.
23. **Génération d'un Fichier de Référence :** Générer un fichier Markdown ou HTML listant tous les DefTypes avec leurs propriétés pour une référence rapide.
24. **Support de la Localisation :** Ajouter des champs pour la localisation des `label` et `description` dans les classes `Def`.
25. **Support des Images :** Ajouter une propriété `@export var graphic_data: Texture` aux Defs qui ont des données graphiques.

---
*(Les 25 propositions restantes peuvent être générées sur demande si les premières sont validées.)*
