# Historique des Décisions - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.1
**Tags :** [décisions, architecture, technique, game-design, historique, développement]

Ce document retrace les décisions clés prises au cours du développement du projet GuildForge Mobile, incluant les justifications et les impacts. Il offre une traçabilité et une compréhension des choix stratégiques et tactiques qui ont façonné le jeu, essentiels pour les futurs développements et la maintenance.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Décisions Architecturales Majeures](#2-décisions-architecturales-majeures)
    *   [Choix de Godot Engine pour le Développement Mobile](#21-choix-de-godot-engine-pour-le-développement-mobile)
    *   [Adoption d'une Architecture Modulaire et Orientée Composants](#22-adoption-dune-architecture-modulaire-et-orientée-composants)
    *   [Migration des Définitions de Jeu : De XML aux Resources de Godot](#23-migration-des-définitions-de-jeu--de-xml-aux-resources-de-godot)
3.  [Décisions Techniques et de Développement](#3-décisions-techniques-et-de-développement)
    *   [Priorisation de l'Optimisation Mobile](#31-priorisation-de-loptimisation-mobile)
    *   [Utilisation de l'IA Générative pour le Code et les Assets](#32-utilisation-de-lia-générative-pour-le-code-et-les-assets)
4.  [Décisions de Conception de Jeu](#4-décisions-de-conception-de-jeu)
    *   [Orientation Médiévale et "RimWorld-like"](#41-orientation-médiévale-et-rimworld-like)
5.  [Références](#5-références)

---

## 1. Introduction

Le développement d'un jeu implique une multitude de décisions, dont certaines ont un impact fondamental sur l'orientation du projet. Ce document sert de registre pour les choix stratégiques et tactiques effectués pour GuildForge Mobile, offrant une traçabilité et une compréhension des raisons sous-jacentes à l'état actuel du jeu. Il est essentiel pour les futurs développements et pour la maintenance.

## 2. Décisions Architecturales Majeures

### 2.1. Choix de Godot Engine pour le Développement Mobile

*   **Contexte :** Le projet vise un développement entièrement sur appareil mobile (Samsung Galaxy A54 5G) sans dépendance à un PC. Le choix du moteur de jeu est crucial pour cette contrainte.
*   **Décision :** Utiliser Godot Engine 4.x comme moteur de jeu principal.
*   **Justification :**
    *   **Accessibilité Mobile :** Godot Engine propose un éditeur fonctionnel sur Android, permettant un développement direct sur l'appareil cible.
    *   **Légèreté et Performance :** Godot est réputé pour sa légèreté et ses performances, essentielles pour les contraintes des appareils mobiles.
    *   **Flexibilité :** Son architecture orientée composants et son système de nœuds sont bien adaptés à la modularité et à l'évolutivité du projet.
    *   **Gratuité et Open Source :** L'absence de budget pour le projet rend Godot, en tant que moteur open source et gratuit, un choix idéal.
*   **Impact :** A permis le développement sur mobile, mais a nécessité une optimisation agressive pour compenser les limitations de performance de l'appareil. A influencé le choix de GDScript comme langage de script principal.

### 2.2. Adoption d'une Architecture Modulaire et Orientée Composants

*   **Contexte :** Nécessité de gérer la complexité d'un jeu de gestion de colonie inspiré de RimWorld, avec des contraintes de développement mobile et l'intégration de l'IA générative.
*   **Décision :** Concevoir une architecture modulaire avec une forte séparation des préoccupations et une approche orientée composants (nœuds et scripts Godot).
*   **Justification :**
    *   **Maintenabilité :** Facilite la maintenance, les tests et l'intégration progressive des fonctionnalités en divisant le système en modules indépendants.
    *   **Évolutivité :** Permet d'ajouter de nouvelles fonctionnalités ou de modifier des existantes sans affecter l'ensemble du système.
    *   **Intégration IA :** Fournit des interfaces claires pour l'intégration du code et des assets générés par l'IA.
    *   **Alignement Godot :** S'aligne naturellement avec la philosophie de Godot Engine, qui favorise l'organisation en nœuds et composants.
*   **Impact :** A structuré le projet en couches distinctes (Données, Logique de Jeu, Présentation, Intégration IA) et a guidé l'organisation des répertoires de scripts.

### 2.3. Migration des Définitions de Jeu : De XML aux Resources de Godot

*   **Contexte :** Initialement, les définitions de jeu (Defs) étaient stockées dans des fichiers XML pour leur flexibilité et leur lisibilité, inspirées par le modèle de RimWorld. Cependant, cette approche a montré des limites en termes d'intégration et de performance avec Godot Engine.
*   **Décision :** Migrer progressivement les définitions de jeu des fichiers XML vers les Resources de Godot.
*   **Justification :**
    *   **Intégration Native :** Les Resources de Godot s'intègrent nativement au moteur, offrant une meilleure performance et une gestion simplifiée des données.
    *   **Workflow Amélioré :** Facilite le développement et la maintenance grâce à l'éditeur Godot et à la sérialisation/désérialisation automatique.
    *   **Cohérence du Projet :** Aligne le format des données avec les pratiques recommandées de Godot, réduisant les incohérences.
*   **État d'Avancement :** La migration est en cours. Les nouveaux éléments de jeu sont définis directement en Resources, et les Defs XML existantes sont converties par lots. Un `DataManager` mis à jour est en développement pour gérer les deux formats pendant la transition.
*   **Impact :** Nécessite une refonte du `DataManager` et une mise à jour de la documentation existante sur les Defs XML pour refléter ce changement. À terme, cela simplifiera la gestion des données et améliorera les performances du jeu.

## 3. Décisions Techniques et de Développement

### 3.1. Priorisation de l'Optimisation Mobile

*   **Contexte :** Le développement sur un appareil mobile unique avec des ressources limitées (6 Go de RAM) impose des contraintes strictes sur les performances.
*   **Décision :** Intégrer l'optimisation mobile comme un principe fondamental à chaque étape du développement.
*   **Justification :**
    *   **Faisabilité :** Indispensable pour garantir une expérience de jeu fluide et éviter les plantages sur l'appareil cible.
    *   **Contraintes Matérielles :** Répondre aux limitations de CPU, GPU et RAM du Samsung A54 5G.
*   **Impact :** A influencé les choix de conception (privilégier le 2D, éviter les calculs complexes en temps réel), les conventions de codage (gestion efficace de la mémoire, pooling d'objets) et les stratégies d'intégration d'assets (compression, atlas de textures).

### 3.2. Utilisation de l'IA Générative pour le Code et les Assets

*   **Contexte :** Projet personnel sans budget, nécessitant d'accélérer la production de contenu et de code avec des ressources limitées.
*   **Décision :** Intégrer des outils d'IA générative (IA Manus, ImagineArt, Picsart, Leonardo.AI) pour la génération de code GDScript et d'assets.
*   **Justification :**
    *   **Accélération de la Production :** L'IA peut générer rapidement des ébauches de code, des assets visuels et des textes, réduisant ainsi le temps de développement.
    *   **Exploration Créative :** Permet d'explorer rapidement différentes options de design et de style.
    *   **Optimisation des Ressources :** Compense l'absence de budget et d'équipe dédiée.
*   **Impact :** Nécessite la mise en place de processus de validation humaine rigoureux pour chaque élément généré par l'IA, ainsi que des directives claires pour le prompting et l'intégration. Voir [Stratégie de Développement IA](./strategie_developpement_ia.md).

## 4. Décisions de Conception de Jeu

### 4.1. Orientation Médiévale et "RimWorld-like"

*   **Contexte :** Volonté de créer un jeu de gestion de colonie profond et narratif.
*   **Décision :** Adopter un univers médiéval avec des mécaniques de jeu inspirées de RimWorld.
*   **Justification :**
    *   **Richesse du Genre :** Le genre de gestion de colonie offre une grande profondeur de gameplay et une forte rejouabilité.
    *   **Potentiel Narratif :** L'univers médiéval permet une grande liberté créative pour le lore et les événements.
    *   **Inspiration Explicite :** RimWorld est une référence majeure pour ses systèmes de simulation complexes et sa narration émergente.
*   **Impact :** Guide toutes les décisions de game design, de la création des personnages aux systèmes de ressources et de combat. Nécessite une adaptation minutieuse des mécaniques complexes de RimWorld aux contraintes mobiles.

## 5. Références

*   [Stratégie de Développement IA](./strategie_developpement_ia.md)
*   [Conventions Générales](../conventions_directives/conventions_generales.md)
*   [Gestion des Données Godot](../../verite_unique/gestion_donnees_godot.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

