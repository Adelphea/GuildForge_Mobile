---
Statut: Brouillon
---
# Conventions de Nommage des Fichiers et Dossiers

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.1
**Tags :** [nommage, fichiers, dossiers, organisation, conventions]

Ce document établit les conventions de nommage à respecter pour les fichiers et dossiers du projet, afin d'assurer une organisation claire et une cohérence dans l'arborescence.

---

## Historique des Révisions

| Version | Date | Auteur | Résumé du Changement |
| :--- | :--- | :--- | :--- |
| 1.1 | 28/11/2025 | Manus AI | Application des conventions de nommage fichiers de données et structure de document. |

## Table des Matières

1.  [Fichiers et Dossiers de Documentation](#1-fichiers-et-dossiers-de-documentation)
2.  [Fichiers de Données et Temporaires](#2-fichiers-de-données-et-temporaires)
3.  [Références](#3-références)

---

## 1. Fichiers et Dossiers de Documentation

| Élément | Convention | Exemple | Note |
| :--- | :--- | :--- | :--- |
| **Dossiers** | `snake_case` | `game_design`, `verite_unique` | Minuscules, séparés par des underscores. |
| **Fichiers (.md)** | `snake_case` | `glossaire.md`, `conventions_nommage.md` | Minuscules, séparés par des underscores. |
| **Ordre** | Préfixes numériques | `01_systeme_monde.md` | Utiliser des préfixes numériques pour garantir l'ordre dans les sections GDD et TDD. |

---

## 2. Fichiers de Données et Temporaires

| Élément | Convention | Exemple | Note |
| :--- | :--- | :--- | :--- |
| **Fichiers de Données (JSON, XML)** | `snake_case` | `game_data_items.json` | Uniformité avec les fichiers Godot. |
| **Fichiers Temporaires/Exemples** | Préfixe `_` | `_temp_test_data.json` | Préfixer par `_temp_` ou `_example_`. |

## 3. Références

*   [Conventions de Codage GDScript](./conventions_codage.md)
*   [Conventions de Documentation Générale](./CONVENTIONS_DOCUMENTATION_GENERALE.md)
*   [Conventions de Nommage des Assets Généraux](./CONVENTIONS_ASSETS_GENERAUX.md)
*   [Conventions de Configuration](./CONVENTIONS_CONFIGURATION.md)
