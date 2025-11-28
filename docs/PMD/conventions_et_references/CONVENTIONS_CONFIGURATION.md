# Conventions de Configuration - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 28 Novembre 2025
**Version :** 1.0
**Tags :** [configuration, godot, import, cfg, conventions]

Ce document établit les conventions pour la gestion des fichiers de configuration et de projet Godot.

---

## 1. Fichiers de Projet et de Configuration

| Fichier | Convention | Note |
| :--- | :--- | :--- |
| `project.godot` | Ne doit être modifié que pour les paramètres essentiels et partagés. Les paramètres spécifiques à l'utilisateur doivent être exclus du contrôle de version si possible. | |
| Fichiers `.import` | Doivent être inclus dans le contrôle de version pour garantir la cohérence des paramètres d'importation des assets. | |
| Fichiers `.cfg` (config) | Utiliser le `snake_case` pour les noms de clés et de sections. | Ex: `[game_settings]`, `max_volume = 1.0` |

---

## 2. Références

*   [Principes Fondamentaux du Projet GuildForge Mobile](./PRINCIPES_FONDAMENTAUX.md)
*   [Conventions de Codage GDScript](./conventions_codage.md)
*   [Conventions de Documentation Générale](./CONVENTIONS_DOCUMENTATION_GENERALE.md)
*   [Conventions de Nommage des Fichiers et Dossiers](./conventions_nommage.md)
*   [Conventions de Nommage des Assets Généraux](./CONVENTIONS_ASSETS_GENERAUX.md)
