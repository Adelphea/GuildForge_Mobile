---
Statut: Brouillon
---
# Conventions de Nommage des Assets Généraux - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 28 Novembre 2025
**Version :** 1.1 (Révisée)
**Tags :** [assets, nommage, ressources, godot, scènes, audio]

Ce document établit les conventions de nommage à respecter pour les ressources (assets) du projet, à l'exclusion du code GDScript.

---

## Historique des Révisions

| Version | Date | Auteur | Résumé du Changement |
| :--- | :--- | :--- | :--- |
| 1.1 | 28/11/2025 | Manus AI | Application des conventions de nommage CR, scènes, et structure de document. |

## Table des Matières

1.  [Ressources Godot](#1-ressources-godot)
2.  [Assets Média](#2-assets-média)
3.  [Références](#3-références)

---

## 1. Ressources Godot

| Élément | Convention | Exemple | Note |
| :--- | :--- | :--- | :--- |
| **Scènes (.tscn)** | `PascalCase` avec préfixe | `SCN_MainMenu.tscn`, `UI_InventorySlot.tscn`, `PRFB_EnemySpawner.tscn` | Préfixes : `SCN_` (scènes principales), `UI_` (interfaces), `PRFB_` (préfabriqués). |
| **Custom Resources (.tres)** | `snake_case` | `item_wood_log.tres`, `building_stone_wall.tres` | Format : `[type]_[nom_instance].tres`. |
| **Matériaux (.tres)** | `PascalCase` avec préfixe | `MAT_Wood_PBR.tres` | Préfixe : `MAT_`. |

## 2. Assets Média

| Élément | Convention | Exemple | Note |
| :--- | :--- | :--- | :--- |
| **Sprites/Textures (.png, .svg)** | `snake_case` | `colon_idle_albedo.png`, `wall_stone_orm.png` | Format : `[asset_name]_[map_type]_[variant].png`. |
| **Audio (.ogg, .wav)** | `snake_case` avec préfixe | `mus_main_theme.ogg`, `sfx_chop_wood.wav`, `voc_colon_greetings.wav` | Préfixes : `mus_` (musique), `sfx_` (effets sonores), `voc_` (voix). |

---

## 3. Références

*   [Principes Fondamentaux du Projet GuildForge Mobile](./PRINCIPES_FONDAMENTAUX.md)
*   [Conventions de Codage GDScript](./conventions_codage.md)
*   [Conventions de Documentation Générale](./CONVENTIONS_DOCUMENTATION_GENERALE.md)
*   [Conventions de Nommage des Fichiers et Dossiers](./conventions_nommage.md)
*   [Conventions de Configuration](./CONVENTIONS_CONFIGURATION.md)
