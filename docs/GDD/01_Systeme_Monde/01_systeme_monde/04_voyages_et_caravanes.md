# Voyages et Caravanes - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.1
**Tags :** [game-design, monde, voyages, caravanes, exploration, événements, ressources, mobile]

Ce document détaille les mécaniques de voyage sur la carte du monde, la gestion des caravanes, les événements rencontrés lors des expéditions et l'impact sur les colons. L'objectif est de permettre aux joueurs d'explorer le monde environnant, de découvrir de nouvelles ressources, de commercer avec d'autres factions et de faire face à des événements aléatoires, enrichissant ainsi l'expérience de jeu au-delà de la gestion de la colonie.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [La Carte du Monde](#2-la-carte-du-monde)
    *   [Génération et Affichage](#21-génération-et-affichage)
    *   [Éléments de la Carte](#22-éléments-de-la-carte)
3.  [Système de Voyage et Expéditions](#3-système-de-voyage-et-expéditions)
    *   [Création d'une Caravane/Expédition](#31-création-dune-caravane/expédition)
    *   [Déroulement du Voyage](#32-déroulement-du-voyage)
    *   [Actions en Expédition](#33-actions-en-expédition)
4.  [Interactions avec d'Autres Systèmes](#4-interactions-avec-dautres-systèmes)
5.  [Références](#5-références)

---

## 1. Introduction

Le système de voyages et de caravanes dans GuildForge Mobile est conçu pour étendre l'expérience de jeu au-delà de la colonie principale. Il offre des opportunités d'exploration, de commerce et de découverte, tout en introduisant des défis liés à la survie et aux interactions avec le monde extérieur.

## 2. La Carte du Monde

### 2.1. Génération et Affichage

Le monde est représenté par une grille de tuiles hexagonales, chacune avec des caractéristiques spécifiques (biome, terrain, ressources, factions). Une carte du monde est accessible depuis l'interface principale, montrant la colonie du joueur, les factions voisines, les points d'intérêt et les zones explorées. En sélectionnant une tuile, le joueur peut obtenir des informations détaillées sur son contenu (ressources disponibles, dangers potentiels, conditions climatiques).

### 2.2. Éléments de la Carte

*   **Colonie du Joueur :** Représentée par une icône spécifique, indiquant son emplacement actuel.
*   **Factions Voisines :** Emplacements des autres colonies ou camps de factions, avec des indicateurs de relation (amical, neutre, hostile).
*   **Points d'Intérêt :** Ruines, grottes, forêts denses, montagnes, rivières, etc., qui peuvent contenir des ressources rares ou déclencher des événements.
*   **Biomes :** Différents types d'environnements (forêt, désert, toundra, marais) influençant les ressources, la faune et la flore.

## 3. Système de Voyage et Expéditions

### 3.1. Création d'une Caravane/Expédition

La création d'une expédition implique plusieurs étapes cruciales pour assurer son succès :

1.  **Sélection des Colons :** Le joueur choisit les colons qui feront partie de l'expédition, en tenant compte de leurs compétences (combat, survie, médecine) et de leur état de santé.
2.  **Préparation des Ressources :** La caravane doit être équipée de nourriture, d'eau, de médicaments, d'armes et d'autres fournitures nécessaires au voyage. Une planification minutieuse est essentielle pour éviter les pénuries.
3.  **Définition de l'Itinéraire :** Le joueur trace un chemin sur la carte du monde, en sélectionnant les tuiles à traverser ou les destinations finales. Le choix de l'itinéraire peut influencer la durée du voyage et les dangers rencontrés.

### 3.2. Déroulement du Voyage

*   **Temps de Voyage :** Le temps nécessaire pour traverser une tuile dépend du terrain, de la vitesse des colons et de la charge de la caravane. Les terrains difficiles (montagnes, marais) ralentiront la progression.
*   **Événements Aléatoires :** Pendant le voyage, la caravane peut rencontrer des événements aléatoires tels que des attaques d'animaux sauvages, des rencontres avec des marchands, la découverte de ruines, ou des conditions météorologiques extrêmes. Ces événements peuvent être positifs ou négatifs et nécessitent des décisions du joueur.
*   **Gestion des Besoins :** Les colons en expédition ont toujours des besoins (faim, soif, repos) qui doivent être gérés pour éviter les malus d'humeur, les maladies ou l'épuisement. Des haltes régulières et une bonne gestion des provisions sont indispensables.

### 3.3. Actions en Expédition

Une fois en expédition, les colons peuvent effectuer diverses actions :

*   **Collecte de Ressources :** Les colons peuvent collecter des ressources spécifiques aux tuiles traversées, enrichissant ainsi les stocks de la colonie.
*   **Commerce :** Possibilité de commercer avec des factions neutres ou amicales rencontrées sur la carte, échangeant des biens et des informations.
*   **Exploration de Points d'Intérêt :** Découverte de trésors, de dangers ou de nouvelles informations sur le lore du monde en explorant des ruines ou des lieux remarquables.
*   **Attaque/Défense :** Engager le combat avec des ennemis ou défendre la caravane contre des menaces, nécessitant des compétences de combat et une bonne stratégie.

## 4. Interactions avec d'Autres Systèmes

Le système de voyages et de caravanes est profondément intégré aux autres systèmes du jeu :

*   **Génération du Monde et Biomes :** La carte est générée selon les principes définis dans [Génération Procédurale du Monde](./01_generation_procedurale.md) et [Biomes et Environnement](./02_biomes_et_environnement.md).
*   **Événements Aléatoires :** Le système de voyage est un déclencheur majeur pour les événements aléatoires (voir le dossier `02_systeme_conteur_ia`).
*   **Gestion des Colons :** Les compétences et l'état des colons influencent directement le succès des expéditions.
*   **Ressources et Production :** Le voyage permet d'acquérir de nouvelles ressources et de commercer, impactant l'économie de la colonie.
*   **Factions et Lore :** Les interactions avec les factions et la découverte de points d'intérêt enrichissent le lore du jeu, comme détaillé dans [Factions et Relations](./03_factions_et_relations.md).

## 5. Références

*   [README du Game Design](../README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)
*   [Génération Procédurale du Monde](./01_generation_procedurale.md)
*   [Biomes et Environnement](./02_biomes_et_environnement.md)
*   [Factions et Relations](./03_factions_et_relations.md)

