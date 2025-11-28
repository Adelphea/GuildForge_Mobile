# Conventions de Codage GDScript - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.1
**Tags :** [codage, GDScript, conventions, style, qualité, développement]

Ce document détaille les conventions de codage spécifiques au GDScript pour le projet GuildForge Mobile. L'objectif est d'assurer la cohérence, la lisibilité et la maintenabilité du code, facilitant ainsi la collaboration et réduisant les erreurs.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Principes Généraux](#2-principes-généraux)
3.  [Nommage](#3-nommage)
    *   [Classes et Nœuds](#31-classes-et-nœuds)
    *   [Variables](#32-variables)
    *   [Fonctions et Méthodes](#33-fonctions-et-méthodes)
4.  [Formatage](#4-formatage)
    *   [Indentation](#41-indentation)
    *   [Espacement](#42-espacement)
    *   [Longueur des Lignes](#43-longueur-des-lignes)
5.  [Commentaires et Documentation](#5-commentaires-et-documentation)
6.  [Typage](#6-typage)
7.  [Gestion des Fichiers](#7-gestion-des-fichiers)
8.  [Références](#8-références)

---

## 1. Introduction

Des conventions de codage uniformes sont essentielles pour tout projet collaboratif, même un projet personnel. Elles facilitent la lecture, la compréhension et la modification du code, réduisant ainsi les erreurs et le temps de débogage. Ce guide s'appuie sur les bonnes pratiques de GDScript et les adapte aux besoins spécifiques de GuildForge Mobile.

## 2. Principes Généraux

*   **Lisibilité :** Le code doit être facile à lire et à comprendre par un être humain.
*   **Cohérence :** Appliquer les mêmes règles de style à travers tout le projet.
*   **Simplicité :** Préférer les solutions simples et directes aux solutions complexes.
*   **Commentaires :** Utiliser des commentaires pour expliquer les parties complexes ou non évidentes du code, mais éviter de commenter l'évident.

## 3. Nommage

### 3.1. Classes et Nœuds

*   **Classes (fichiers .gd) :** Utiliser le `PascalCase` (ex: `PlayerController.gd`, `ItemDefinition.gd`). (Règle consolidée)
*   **Nœuds dans l'arbre de scène :** Utiliser le `PascalCase` (ex: `Player`, `EnemySpawner`). (Règle consolidée)

### 3.2. Variables

*   **Variables/Propriétés :** Utiliser le `snake_case` (ex: `current_health`, `max_stack_size`). (Règle consolidée)
*   **Constantes :** Utiliser le `SCREAMING_SNAKE_CASE` (ex: `MAX_COLON_COUNT`, `DEFAULT_SPEED`). (Règle consolidée)
*   **Variables exportées (`@export`) :** Utiliser le `snake_case`.

### 3.3. Fonctions et Méthodes

*   **Fonctions/Méthodes :** Utiliser le `snake_case` (ex: `_ready()`, `handle_damage()`, `load_data()`). (Règle consolidée)
*   **Signaux :** Utiliser le `snake_case` (ex: `colon_died`, `resource_updated`). (Règle consolidée)

## 4. Formatage

### 4.1. Indentation

*   Utiliser 4 espaces pour l'indentation. Ne pas utiliser de tabulations.

### 4.2. Espacement

*   Ajouter des espaces autour des opérateurs (ex: `a = b + c`).
*   Ajouter un espace après les virgules (ex: `func my_func(arg1, arg2):`).
*   Ajouter des lignes vides pour séparer les blocs logiques de code.

### 4.3. Longueur des Lignes

*   Tenter de limiter les lignes à 100 caractères pour une meilleure lisibilité.

## 5. Commentaires et Documentation

*   **Commentaires de ligne :** Utiliser `#` pour les commentaires de ligne.
*   **Docstrings :** Utiliser des docstrings pour documenter les classes, fonctions et méthodes complexes. Le format recommandé est le `reStructuredText` ou un format similaire pour faciliter la génération automatique de documentation.

```gdscript
# Exemple de docstring pour une fonction
func calculate_damage(base_damage: int, multiplier: float) -> int:
    """
    Calcule les dégâts finaux en appliquant un multiplicateur.

    Args:
        base_damage (int): Les dégâts de base.
        multiplier (float): Le multiplicateur de dégâts.

    Returns:
        int: Les dégâts finaux arrondis.
    """
    return int(base_damage * multiplier)
```

## 6. Typage

*   Utiliser le typage statique (`:` et `->`) pour les arguments de fonction, les valeurs de retour et les variables lorsque cela améliore la clarté et aide à la détection d'erreurs.

```gdscript
var current_health: int = 100
func get_player_name() -> String:
    return "Hero"
```

## 7. Gestion des Fichiers

*   Chaque script GDScript doit idéalement contenir une seule classe ou un seul concept logique.
*   Les scripts doivent être placés dans des dossiers logiques (ex: `scripts/player`, `scripts/items`).

## 8. Références

*   [Conventions de Documentation Générale](./CONVENTIONS_DOCUMENTATION_GENERALE.md)
*   [Documentation Godot sur GDScript](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_basics.html)
*   [GDScript Style Guide (non officiel mais utile)](https://github.com/godotengine/godot-docs/blob/master/contributing/gdscript_style_guide.rst)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

