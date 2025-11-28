# Conventions de Nommage des Assets Généraux - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 28 Novembre 2025
**Version :** 1.0
**Tags :** [assets, nommage, ressources, godot, scènes, audio]

Ce document établit les conventions de nommage à respecter pour les ressources (assets) du projet, à l'exclusion du code GDScript.

---

## 1. Ressources Godot

| Élément | Convention | Exemple | Note |
| :--- | :--- | :--- | :--- |
| **Scènes (.tscn)** | `PascalCase` | `MainMenu.tscn`, `ColonView.tscn` | Doit correspondre au nom de la classe principale de la scène. |
| **Custom Resources (.tres)** | `PascalCase` | `WoodItemDef.tres`, `StoneWallDef.tres` | Nom de la ressource suivi de son type de définition (Def, Type, etc.). |

## 2. Assets Média

| Élément | Convention | Exemple | Note |
| :--- | :--- | :--- | :--- |
| **Sprites/Textures (.png, .svg)** | `snake_case` | `colon_idle_01.png`, `wall_stone.png` | Nom descriptif en minuscules. |
| **Audio (.ogg, .wav)** | `snake_case` | `music_main_theme.ogg`, `sfx_chop_wood.wav` | Préfixer par `music_` ou `sfx_`. |

---

## 3. Références

*   [Principes Fondamentaux du Projet GuildForge Mobile](./PRINCIPES_FONDAMENTAUX.md)
*   [Conventions de Codage GDScript](./conventions_codage.md)
*   [Conventions de Documentation Générale](./CONVENTIONS_DOCUMENTATION_GENERALE.md)
*   [Conventions de Nommage des Fichiers et Dossiers](./conventions_nommage.md)
*   [Conventions de Configuration](./CONVENTIONS_CONFIGURATION.md)
