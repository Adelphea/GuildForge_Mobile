---
title: "GDD-09 : Système Recherche et Progression"
version: 1.0
date: 2025-11-30
auteur: Architecte de Game Design et Spécialiste de l'Émergence (AGDSE)
tags: [game-design, recherche, progression, technologie, médiéval, inspiration]
---

# GDD-09 : Système Recherche et Progression

Ce document consolide les spécifications de *game design* pour le système de recherche et de progression collective, couvrant l'arbre technologique, l'inspiration et les découvertes.

---

## Table des Matières

I. Introduction et Principes de Design
II. Arbre Technologique Médiéval
    II.1. Composants du Système de Recherche
    II.2. Projets de Recherche
III. Inspiration et Découvertes
    III.1. Mécanismes d'Inspiration
    III.2. Découvertes Fortuites
IV. Intégration et Progression

---

## I. Introduction et Principes de Design

Le système de recherche est le moteur de la progression collective de la colonie, ancré dans un contexte médiéval. Il régit l'acquisition de nouvelles connaissances et techniques de manière plausible pour l'époque.

**Principe de Design AGDSE :** La progression doit être le fruit de l'**observation, de l'expérimentation et de l'inspiration**, plutôt que d'une recherche scientifique moderne. Le savoir est une ressource précieuse et limitée.

## II. Arbre Technologique Médiéval

L'arbre technologique est l'interface et la structure de la progression collective.

### II.1. Composants du Système de Recherche

| Composant | Rôle de Design | Facteur Clé |
| :--- | :--- | :--- |
| **Table de Recherche** | Atelier central pour les activités de recherche. | Nécessite un colon assigné. |
| **Arbre de Recherche** | Interface utilisateur pour visualiser les projets et leurs dépendances. | Progression linéaire et ramifiée. |
| **Projets de Recherche** | Entreprises spécifiques débloquant de nouvelles capacités (constructions, recettes). | Coût en temps de travail (`baseCost`), prérequis. |
| **Niveaux Technologiques** | Classification des avancées (Médiéval Primitif, Médiéval Avancé). | Assure la cohérence avec l'univers du jeu. |

### II.2. Projets de Recherche

Les projets sont organisés en domaines thématiques :

*   **Artisanat :** Nouvelles recettes de fabrication (armes, armures, outils).
*   **Agriculture :** Techniques de culture avancées, élevage.
*   **Construction :** Nouveaux types de bâtiments, matériaux améliorés.
*   **Médecine :** Traitements des maladies, fabrication de remèdes.
*   **Militaire :** Tactiques de combat, engins de siège.

## III. Inspiration et Découvertes

Ces mécanismes fournissent des moyens alternatifs et immersifs de progresser.

### III.1. Mécanismes d'Inspiration

L'inspiration est un catalyseur pour la recherche, générant des points de recherche ou de nouvelles idées.

*   **Sources :** Observation de la nature, expériences quotidiennes (artisanat, cuisine), événements aléatoires, lecture.
*   **Rôle des Compétences :** La compétence **Intellectuel** est cruciale pour transformer les observations en idées concrètes et accumuler des points de recherche.

### III.2. Découvertes Fortuites

Les découvertes sont des avancées inattendues qui peuvent accélérer la progression.

*   **Déclencheurs :** Exploration (ruines, gisements), interactions avec des factions (commerce, diplomatie), expérimentation.
*   **Impact :** Déblocage de projets de recherche, bonus de recherche, nouvelles recettes/constructions immédiates.

## IV. Intégration et Progression

Le système de recherche est intégré à la vie de la colonie :

*   **Compétences :** La vitesse de recherche dépend directement du niveau d'**Intellectuel** du colon assigné.
*   **Production :** Les projets débloquent des capacités dans les systèmes de **Construction** et de **Ressources et Production**.
*   **Événements :** Les événements aléatoires du **Conteur IA** peuvent être des sources majeures d'inspiration ou de découvertes.

---

## V. Références

[1] [GDD-03 : Système Personnages](../GDD-03_systeme_personnages.md)
[2] [GDD-05 : Système Construction](../GDD-05_systeme_construction.md)
[3] [GDD-06 : Système Ressources et Production](../GDD-06_systeme_ressources_et_production.md)
[4] [GDD-08 : Système Diplomatie et Commerce](../GDD-08_systeme_diplomatie_et_commerce.md)
[5] [GDD-02 : Système Conteur IA](../GDD-02_systeme_conteur_ia.md)
[6] [TDD-01 : Architecture de Données](../TDD/TDD-01_architecture_de_donnees.md)
[7] [PMD/conventions_generales.md](../PMD/conventions_generales.md)
