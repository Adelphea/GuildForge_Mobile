---
title: "GDD-11 : Système Progression et Objectifs"
version: 1.0
date: 2025-11-30
auteur: Architecte de Game Design et Spécialiste de l'Émergence (AGDSE)
tags: [game-design, progression, objectifs, narration, émergence, fin-de-jeu]
---

# GDD-11 : Système Progression et Objectifs

Ce document consolide les spécifications de *game design* pour la progression du joueur et les objectifs de jeu, en mettant l'accent sur la narration émergente et la nature "sandbox" du jeu.

---

## Table des Matières

I. Introduction et Principes de Design
II. Progression du Joueur (Collective et Individuelle)
    II.1. Progression Collective (Technologie et Expansion)
    II.2. Progression Individuelle (Compétences et Histoire)
III. Objectifs et Fin de Jeu
    III.1. Objectifs Émergents (Conteur IA)
    III.2. Objectifs Fixes (Fin de Jeu)
IV. Système de Modding et Extensibilité (GDD-12)

---

## I. Introduction et Principes de Design

GuildForge Mobile est un jeu de type "sandbox" (bac à sable) où la progression est principalement **émergente** et non linéaire. Le système d'objectifs est conçu pour guider le joueur sans imposer une structure rigide.

**Principe de Design AGDSE :** La progression doit être une **série de défis auto-générés** par le Conteur IA et les besoins des colons, où l'objectif ultime est la survie et la prospérité à long terme de la colonie.

## II. Progression du Joueur (Collective et Individuelle)

La progression se manifeste à deux niveaux : l'avancement de la colonie et le développement des colons.

### II.1. Progression Collective (Technologie et Expansion)

| Axe de Progression | Mécanisme Clé | Indicateur de Succès |
| :--- | :--- | :--- |
| **Technologie** | Système de **Recherche et Progression** (GDD-09). | Déblocage de nouvelles constructions, recettes, et techniques. |
| **Expansion** | Système de **Construction** (GDD-05) et **Ressources** (GDD-06). | Taille de la colonie, richesse totale, niveau de confort. |
| **Défense** | Système de **Combat** (GDD-07). | Capacité à repousser des menaces de plus en plus importantes. |

### II.2. Progression Individuelle (Compétences et Histoire)

*   **Compétences :** Les colons améliorent leurs compétences par la pratique (apprentissage par l'action), influençant leur efficacité dans les tâches.
*   **Histoire :** La progression individuelle est marquée par les événements de vie (mariages, blessures, crises de nerfs) générés par le **Conteur IA** (GDD-02), qui forgent l'histoire personnelle de chaque colon.

## III. Objectifs et Fin de Jeu

Le jeu est principalement un "sandbox" sans fin, mais des objectifs peuvent être définis.

### III.1. Objectifs Émergents (Conteur IA)

Le **Conteur IA** (GDD-02) génère des défis et des opportunités qui servent d'objectifs temporaires :

*   **Menaces :** Raids de bandits, attaques d'animaux, catastrophes naturelles. L'objectif est la survie et la reconstruction.
*   **Opportunités :** Quêtes de factions, découvertes de ruines, arrivées de réfugiés. L'objectif est l'exploitation de l'opportunité.
*   **Besoins :** Les besoins non satisfaits des colons (faim, maladie, confort) créent des objectifs de gestion immédiats.

### III.2. Objectifs Fixes (Fin de Jeu)

Bien que non obligatoire, une "fin de jeu" peut être atteinte par des objectifs à très long terme :

*   **Construction d'un Monument :** Atteindre un niveau de richesse et de technologie suffisant pour construire une structure monumentale (ex: une cathédrale, un château).
*   **Départ de la Colonie :** Développer une technologie de voyage avancée (ex: un grand navire) pour quitter la région et fonder une nouvelle colonie ailleurs (si le design le permet).

## IV. Système de Modding et Extensibilité (GDD-12)

Le projet étant open source et data-driven, l'extensibilité est un objectif de design clé.

*   **Philosophie :** Le jeu doit être facilement modifiable par la communauté.
*   **Implémentation :** Utilisation intensive des **Custom Resources Godot** (TDD-01) pour définir les objets, les recettes, les bâtiments, les événements, etc.
*   **GDD-12 :** Un document dédié (GDD-12) sera créé pour détailler les conventions de modding et les points d'extension si nécessaire, mais l'essentiel du design est déjà couvert par la structure TDD.

---

## V. Références

[1] [GDD-02 : Système Conteur IA](../GDD-02_systeme_conteur_ia.md)
[2] [GDD-03 : Système Personnages](../GDD-03_systeme_personnages.md)
[3] [GDD-09 : Système Recherche et Progression](../GDD-09_systeme_recherche_et_progression.md)
[4] [TDD-01 : Architecture de Données](../TDD/TDD-01_architecture_de_donnees.md)
[5] [PMD/conventions_generales.md](../PMD/conventions_generales.md)
