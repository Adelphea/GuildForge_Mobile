# Conventions de Nommage des Fichiers et Dossiers - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 28 Novembre 2025
**Version :** 1.2 (Révisée)
**Tags :** [documentation, conventions, nommage, fichiers, dossiers]

Ce document établit les conventions de nommage à respecter pour les fichiers et dossiers du projet, à l'exclusion du code GDScript et des assets (voir documents dédiés).

---

## 1. Fichiers et Dossiers (Documentation)

| Élément | Convention | Exemple | Note |
| :--- | :--- | :--- | :--- |
| **Dossiers** | `snake_case` | `game_design`, `verite_unique` | Minuscules, séparés par des underscores. |
| **Fichiers (.md)** | `snake_case` | `glossaire.md`, `conventions_nommage.md` | Minuscules, séparés par des underscores. |
| **Ordre** | Préfixes numériques | `01_systeme_monde.md` | Utiliser des préfixes numériques pour garantir l'ordre dans les sections GDD et TDD. |

---

## 2. Fichiers de Données et Temporaires\n\n| Élément | Convention | Exemple | Note |\n| :--- | :--- | :--- | :--- |\n| **Fichiers de Données (JSON, XML)** | `snake_case` | `game_data_items.json` | Uniformité avec les fichiers Godot. |\n| **Fichiers Temporaires/Exemples** | Préfixe `_` | `_temp_test_data.json` | Préfixer par `_temp_` ou `_example_`. |\n\n## 3. Références

*   [Principes Fondamentaux du Projet GuildForge Mobile](./PRINCIPES_FONDAMENTAUX.md)
*   [Conventions de Codage GDScript](./conventions_codage.md)
*   [Conventions de Documentation Générale](./CONVENTIONS_DOCUMENTATION_GENERALE.md)
*   [Conventions de Nommage des Assets Généraux](./CONVENTIONS_ASSETS_GENERAUX.md)
*   [Conventions de Configuration](./CONVENTIONS_CONFIGURATION.md)
