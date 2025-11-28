# Conventions de Nommage - GuildForge Mobile

**Auteur :** Manus IA
**Date :** 03 Novembre 2025
**Version :** 1.1
**Tags :** [documentation, verite_unique, conventions, nommage, code, assets]

Ce document établit les conventions de nommage à respecter dans le projet GuildForge Mobile pour garantir la cohérence, la lisibilité et la maintenabilité du code et des ressources.

---

## 1. Code (GDScript)

| Élément | Convention | Exemple | Note |
| :--- | :--- | :--- | :--- |
| **Classes (Fichiers)** | `PascalCase` | `ItemDefinition.gd`, `GameManager.gd` | Utilisé pour les classes, les Singletons et les Custom Resources. |
| **Variables/Propriétés** | `snake_case` | `current_health`, `max_stack_size` | Préféré pour les variables locales et les propriétés de classe. |
| **Constantes** | `SCREAMING_SNAKE_CASE` | `MAX_COLON_COUNT`, `DEFAULT_SPEED` | Utilisé pour les constantes globales ou de classe. |
| **Fonctions/Méthodes** | `snake_case` | `_ready()`, `handle_damage()`, `load_data()` | Utilisé pour les fonctions et les méthodes. |
| **Signaux** | `snake_case` | `colon_died`, `resource_updated` | Doit être clair et descriptif de l'événement. |

## 2. Ressources (Assets)

| Élément | Convention | Exemple | Note |
| :--- | :--- | :--- | :--- |
| **Scènes (.tscn)** | `PascalCase` | `MainMenu.tscn`, `ColonView.tscn` | Doit correspondre au nom de la classe principale de la scène. |
| **Custom Resources (.tres)** | `PascalCase` | `WoodItemDef.tres`, `StoneWallDef.tres` | Nom de la ressource suivi de son type de définition (Def, Type, etc.). |
| **Sprites/Textures (.png, .svg)** | `snake_case` | `colon_idle_01.png`, `wall_stone.png` | Nom descriptif en minuscules. |
| **Audio (.ogg, .wav)** | `snake_case` | `music_main_theme.ogg`, `sfx_chop_wood.wav` | Préfixer par `music_` ou `sfx_`. |

## 3. Documentation (Markdown)

| Élément | Convention | Exemple | Note |
| :--- | :--- | :--- | :--- |
| **Dossiers** | `snake_case` | `game_design`, `verite_unique` | Minuscules, séparés par des underscores. |
| **Fichiers (.md)** | `snake_case` | `glossaire.md`, `conventions_nommage.md` | Minuscules, séparés par des underscores. Utiliser des préfixes numériques pour l'ordre (ex: `01_systeme_monde.md`). |

md`). |

