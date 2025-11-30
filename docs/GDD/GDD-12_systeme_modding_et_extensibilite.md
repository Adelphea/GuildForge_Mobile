---
title: "GDD-12 : Système Modding et Extensibilité"
version: 1.0
date: 2025-11-30
auteur: Architecte de Game Design et Spécialiste de l'Émergence (AGDSE)
tags: [game-design, modding, extensibilité, open-source, data-driven, godot]
---

# GDD-12 : Système Modding et Extensibilité

Ce document formalise les spécifications de *game design* pour le système de modding et d'extensibilité, un pilier essentiel pour un projet open source.

---

## Table des Matières

I. Introduction et Principes de Design
II. Philosophie du Modding
III. Points d'Extension Clés
IV. Conventions de Modding

---

## I. Introduction et Principes de Design

Le projet GuildForge Mobile est un projet personnel, open source et non commercial. L'extensibilité et la facilité de modding sont donc des objectifs de design primordiaux pour encourager la contribution communautaire.

**Principe de Design AGDSE :** Le jeu doit être **entièrement piloté par les données (Data-Driven)**, permettant aux moddeurs de modifier ou d'ajouter du contenu sans toucher au code source du moteur de jeu.

## II. Philosophie du Modding

*   **Accessibilité :** Le modding doit être accessible aux utilisateurs ayant des connaissances de base en édition de fichiers texte (YAML/JSON/XML) et en Godot Engine (Custom Resources).
*   **Séparation :** Séparation stricte entre le code du moteur (Godot/GDScript) et les données de jeu (Game Data).
*   **Priorité :** Le modding de contenu (objets, recettes, événements, bâtiments) est la priorité. Le modding de mécaniques de jeu avancées est secondaire.

## III. Points d'Extension Clés

L'extensibilité repose sur l'architecture **Data-Driven** du jeu, utilisant les **Custom Resources Godot** (TDD-01) pour définir le contenu.

| Point d'Extension | Description | Fichiers de Données Associés |
| :--- | :--- | :--- |
| **Contenu** | Ajout de nouveaux objets, recettes, bâtiments, animaux, plantes. | `ItemDef`, `RecipeDef`, `BuildingDef`, `PawnKindDef`, etc. |
| **Événements** | Ajout de nouveaux événements pour le Conteur IA. | `IncidentDef`, `StorytellerDef`. |
| **Localisation** | Ajout de nouvelles langues ou modification des textes existants. | Fichiers de localisation (ex: `.po` ou `.csv`). |
| **Graphismes** | Ajout de nouveaux sprites, textures, ou animations 2D. | Fichiers image (PNG, Aseprite) et leurs définitions. |

## IV. Conventions de Modding

Pour garantir la compatibilité et la facilité de maintenance, les moddeurs devront adhérer aux conventions suivantes :

1.  **Format de Données :** Utilisation exclusive du format de données défini dans **TDD-01** (probablement YAML ou JSON pour les définitions de ressources).
2.  **Nommage :** Les moddeurs doivent utiliser un préfixe unique pour tous leurs `defName` afin d'éviter les conflits avec le jeu de base ou d'autres mods (ex: `[MonMod]_NewItem`).
3.  **Référence :** Toutes les références aux objets du jeu de base doivent utiliser les `defName` définis dans le GDD/TDD.

---

## V. Références

[1] [TDD-01 : Architecture de Données](../TDD/TDD-01_architecture_de_donnees.md)
[2] [GDD-02 : Système Conteur IA](../GDD-02_systeme_conteur_ia.md)
[3] [GDD-06 : Système Ressources et Production](../GDD-06_systeme_ressources_et_production.md)
[4] [PMD/conventions_generales.md](../PMD/conventions_generales.md)
