# Conventions de Nommage des Assets Généraux - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 28 Novembre 2025
**Version :** 1.1 (Révisée)
**Tags :** [assets, nommage, ressources, godot, scènes, audio]

Ce document établit les conventions de nommage à respecter pour les ressources (assets) du projet, à l'exclusion du code GDScript.

---

## 1. Ressources Godot

| Élément | Convention | Exemple | Note |
| :--- | :--- | :--- | :--- |
| **Scènes (.tscn)** | `PascalCase` avec préfixe | `SCN_MainMenu.tscn`, `UI_InventorySlot.tscn`, `PRFB_EnemySpawner.tscn` | Préfixes : `SCN_` (scènes principales), `UI_` (interfaces), `PRFB_` (préfabriqués). (Prop 20) |
| **Custom Resources (.tres)** | `snake_case` | `item_wood_log.tres`, `building_stone_wall.tres` | Format : `[type]_[nom_instance].tres`. (Prop 16) |
| **Matériaux (.tres)** | `PascalCase` avec préfixe | `MAT_Wood_PBR.tres` | Préfixe : `MAT_`. (Prop 30) |

## 2. Assets Média

| Élément | Convention | Exemple | Note |
| :--- | :--- | :--- | :--- |
| **Sprites/Textures (.png, .svg)** | `snake_case` | `colon_idle_albedo.png`, `wall_stone_orm.png` | Format : `[asset_name]_[map_type]_[variant].png`. (Prop 21) |
| **Audio (.ogg, .wav)** | `snake_case` avec préfixe | `mus_main_theme.ogg`, `sfx_chop_wood.wav`, `voc_colon_greetings.wav` | Préfixes : `mus_` (musique), `sfx_` (effets sonores), `voc_` (voix). (Prop 22) |

---

## 3. Références

*   [Principes Fondamentaux du Projet GuildForge Mobile](./PRINCIPES_FONDAMENTAUX.md)
*   [Conventions de Codage GDScript](./conventions_codage.md)
*   [Conventions de Documentation Générale](./CONVENTIONS_DOCUMENTATION_GENERALE.md)
*   [Conventions de Nommage des Fichiers et Dossiers](./conventions_nommage.md)
*   [Conventions de Configuration](./CONVENTIONS_CONFIGURATION.md)
