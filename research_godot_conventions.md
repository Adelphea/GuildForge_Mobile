# Synthèse de la Recherche sur les Conventions Godot 4.x et les Custom Resources

## 1. Conventions de Nommage Officielles (GDScript Style Guide)

| Type | Convention | Recommandation |
| :--- | :--- | :--- |
| **Noms de Fichiers (.gd)** | `snake_case` | **Crucial :** Les fichiers GDScript doivent être en `snake_case` (ex: `player_controller.gd`). Si le fichier contient une `class_name`, celle-ci doit être en `PascalCase` (ex: `class_name PlayerController`). |
| **Noms de Classes** | `PascalCase` | Utilisé pour les classes définies avec `class_name`. |
| **Noms de Nœuds** | `PascalCase` | Utilisé pour les nœuds dans l'arbre de scène. |
| **Fonctions/Méthodes** | `snake_case` | Standard GDScript. |
| **Variables** | `snake_case` | Standard GDScript. |
| **Constantes** | `SCREAMING_SNAKE_CASE` | Standard GDScript. |
| **Énumérations (Nom)** | `PascalCase` | Standard GDScript. |
| **Membres d'Énumération** | `SCREAMING_SNAKE_CASE` | Standard GDScript. |
| **Variables Privées** | `_snake_case` | **Recommandé :** Utiliser un underscore de tête pour les variables et fonctions internes/privées. |

## 2. Meilleures Pratiques pour les Custom Resources (CR)

Les Custom Resources (CR) sont le mécanisme idéal pour le *Data-Oriented Design* (Conception Axée sur les Données) dans Godot, ce qui est parfait pour un jeu de type *Rimworld-like* comme GuildForge Mobile.

### A. Nommage des Fichiers CR (.tres)

*   **Problématique :** Les fichiers `.tres` sont des instances de la classe CR. Le nommage doit être clair et indiquer le type et l'instance.
*   **Recommandation Révisée :** Utiliser le format `[type]_[nom_instance].tres` en `snake_case` pour les instances, et non `PascalCase` comme initialement proposé, pour s'aligner sur la convention de nommage des fichiers Godot (`snake_case`).
    *   **Exemple :** `item_wood_log.tres`, `building_stone_wall.tres`.

### B. Nommage des Classes CR (.gd)

*   **Recommandation :** Utiliser `PascalCase` pour la classe (ex: `ItemDefinition`) et s'assurer que le fichier GDScript est en `snake_case` (ex: `item_definition.gd`).
*   **Amélioration :** Utiliser un suffixe clair pour les classes de définition de données.
    *   **Exemple :** `ItemData`, `BuildingDefinition`, `TraitResource`.

### C. Structure des CR

*   **Clé d'Identification :** Chaque CR doit avoir un champ `id` (souvent une `String` ou un `int`) pour l'identification dans le code, séparé du nom de fichier.
*   **Héritage :** Définir une classe de base `BaseDataResource.gd` dont toutes les autres CR hériteront.

## 3. Révision des Propositions (Tableau II)

Les conclusions de cette recherche seront utilisées pour réviser et améliorer les Propositions 16 à 35 dans la phase suivante. Les propositions initiales étaient déjà proches des standards, mais la recherche permet d'affiner la cohérence (notamment l'utilisation de `snake_case` pour les fichiers `.tres` et `.gd`).
