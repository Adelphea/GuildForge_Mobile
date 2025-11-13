# Génération Procédurale du Monde - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.1
**Tags :** [game-design, monde, génération-procédurale, biomes, topographie, ressources, optimisation, mobile, Godot]

Ce document décrit les principes et les algorithmes utilisés pour la génération procédurale du monde de GuildForge. Il couvre la topographie, les ressources initiales, les points d'intérêt, et les paramètres de biomes/climat, en mettant l'accent sur la rejouabilité et l'optimisation pour les appareils mobiles. L'objectif est d'offrir une expérience unique et variée à chaque nouvelle partie.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Concept Central et Objectifs](#2-concept-central-et-objectifs)
    *   [Concept Central](#21-concept-central)
    *   [Objectifs](#22-objectifs)
3.  [Mécaniques et Systèmes de Génération](#3-mécaniques-et-systèmes-de-génération)
    *   [Paramétrage de la Génération du Monde (Écran distinct)](#31-paramétrage-de-la-génération-du-monde-écran-distinct)
    *   [Génération et Affichage du Monde (Écran distinct avec chargement)](#32-génération-et-affichage-du-monde-écran-distinct-avec-chargement)
    *   [Génération de Carte Procédurale (WorldGenStepDef)](#33-génération-de-carte-procédurale-worldgenstepdef)
    *   [Sélection de la Tuile de Départ](#34-sélection-de-la-tuile-de-départ)
4.  [Algorithmes de Génération Détaillés](#4-algorithmes-de-génération-détaillés)
    *   [Génération de Terrain (Hauteur et Humidité)](#41-génération-de-terrain-hauteur-et-humidité)
    *   [Génération de Ressources](#42-génération-de-ressources)
    *   [Génération des Factions et Points d'Intérêt](#43-génération-des-factions-et-points-dintérêt)
5.  [Optimisation pour Mobile](#5-optimisation-pour-mobile)
6.  [Références](#6-références)

---

## 1. Introduction

La génération procédurale du monde est une mécanique fondamentale de GuildForge, visant à offrir une expérience unique et variée à chaque nouvelle partie. Ce système est conçu pour créer des mondes cohérents et immersifs, tout en permettant une personnalisation par le joueur et en respectant les contraintes de performance mobile.

## 2. Concept Central et Objectifs

### 2.1. Concept Central

Offrir une grande rejouabilité et des défis variés à chaque nouvelle partie grâce à un système de génération de monde procédural et des options de mapping flexibles, permettant au joueur de personnaliser son environnement de départ. Le processus de génération est divisé en deux écrans distincts pour une meilleure expérience utilisateur.

### 2.2. Objectifs

*   Générer des mondes uniques et cohérents à chaque nouvelle partie.
*   Définir une variété de biomes avec des caractéristiques distinctes (ressources, faune, flore, climat).
*   Permettre au joueur d'inclure ou d'exclure certains biomes pour personnaliser son expérience.
*   Fournir une interface claire pour la sélection de la tuile de départ, avec des informations pertinentes sur les caractéristiques locales.
*   Assurer une distinction claire entre l'écran de paramétrage du monde et l'écran du monde généré, avec une phase de chargement optimisée.
*   Concevoir un monde à partir d’un polyedre de Golberg represantant une planète avec continent unique entouré d'océan, utilisant des tuiles hexagonales et pentagonales pour distinguer les differentes topographies comprenant leur biome respectifs.

## 3. Mécaniques et Systèmes de Génération

Le processus de génération du monde est intégré au flux de démarrage de partie et se déroule en deux phases distinctes : le paramétrage et la génération/affichage.

### 3.1. Paramétrage de la Génération du Monde (Écran distinct)

Le joueur définit les paramètres globaux de la génération du monde sur un écran dédié. Ce processus est distinct de l'affichage du monde généré et précède une phase de chargement. Les options de personnalisation incluent :

*   **Graine (Seed)** : Une chaîne de caractères qui détermine la génération unique du monde. Le joueur pourra en saisir une ou en générer une aléatoirement.
*   **Couverture du Globe** : Le pourcentage de la planète qui sera généré avec des tuiles jouables, influençant la quantité des tuiles océaniques et des tuiles terrestres.
*   **Précipitations et Température** : Paramètres globaux affectant le climat et la végétation du monde.
*   **Population** : Influençant la quantité de factions PNJ présentes sur les tuiles terrestres.

### 3.2. Génération et Affichage du Monde (Écran distinct avec chargement)

Après la validation des paramètres, une phase de chargement est lancée pour optimiser le processus de génération. Une fois généré, le monde est affiché au joueur pour la sélection de sa zone de départ. Le monde généré aura les caractéristiques suivantes :

*   **Tuiles Océaniques** : Le monde sera délimité par des tuiles océaniques, créant une impression de continent isolé.
*   **Continent Unique** : Le monde sera composé d'une seule masse terrestre organique, évitant les archipels fragmentés pour une expérience de jeu plus cohérente et une meilleure lisibilité sur mobile.
*   **Tuiles Hexagonales et pentagonales** : Les tuiles du monde seront hexagonales et pentagonales, afin d’assurer que le polyedre de golberg parfaitement respecté. Offrant une navigation et une représentation visuelle distinctes.

### 3.3. Génération de Carte Procédurale (WorldGenStepDef)

Le monde de GuildForge est généré de manière procédurale à chaque nouvelle partie. L'algorithme de génération prend en compte plusieurs facteurs pour créer une carte du monde cohérente et diversifiée, en s'appuyant sur les `WorldGenStepDef` et `BiomeDef` identifiés dans l'analyse XML [3, 4].

Les `WorldGenStepDef` définissent les étapes séquentielles du processus de génération du monde. Chaque étape (`WorldGenStepDef`) est responsable d'une partie spécifique de la création de la carte, assurant une construction modulaire et cohérente. Par exemple, des étapes comme `Terrain` (génération du terrain), `Tiles` (définition des tuiles), `Lakes` (création des lacs), et `Rivers` (tracé des rivières) sont des `WorldGenStepDef` typiques [3, 4].

*   **Algorithme de Génération :**
/!\ A redefinir
*   **Représentation de la planète :** La planète est représenté par un ensemble de tuiles d’exagonales et de pentagonales du polyedre de Golberg, chacunes ayant des caractéristiques spécifiques basées sur son biome, son altitude, sa fertilité et la présence de ressources.

**Tableau 1 : Exemples de WorldGenStepDef et leurs fonctions**

| WorldGenStepDef | Fonction (GuildForge) |
| :-------------- | :---------------------------------------------------------------- |
| `Terrain`       | Génération des élévations et des dépressions du terrain.         |
| `Tiles`         | Définition des propriétés de base de chaque tuile (température, humidité). |
| `Lakes`         | Création des étendues d'eau douce.                               |
| `Rivers`        | Tracé des cours d'eau.                                          |
| `AncientSites`  | Placement des ruines et vestiges médiévaux.                      |

### 3.4. Sélection de la Tuile de Départ

Une fois le monde généré, le joueur est présenté se trouve fasse au polyedre de Golberg et doit choisir une tuile pour y établir sa colonie.

*   **Affichage de planète:** Elle affiche les différentes tuiles, avec une textures liées au biome de la tuile.
*   **Caractéristiques des Tuiles :** Chaque tuile sélectionnable aura des caractéristiques propres à son biome, mais aussi des variations locales (type de terrain, présence d'eau, ressources locales, climat local, voisins potentiels).

## 4. Algorithmes de Génération Détaillés

### 4.1. Génération du polyedre de golberg 

*   /!\ A definir
### 4.2. Génération des paramètres de chaques tuiles. 

*
### 4.3. Génération de Ressources

*   **Distribution :** Les ressources (minerais, bois, eau, gibier) sont distribuées en fonction des biomes et des caractéristiques du terrain.
*   **Rareté :** Certaines ressources sont plus rares et se trouvent dans des zones spécifiques, encourageant l'exploration.
*   **Nœuds de Ressources :** Création de points d'intérêt sur la carte où les ressources sont plus abondantes ou de meilleure qualité.

### 4.3. Génération des Factions et Points d'Intérêt

*   **Villes/Villages :** Placement de colonies neutres ou hostiles sur des tuiles terrestres, influencé par la proximité des ressources et des voies navigables.
*   **Ruines/Donjons :** Génération de lieux d'intérêt pour l'exploration, potentiellement avec des défis et des récompenses.
*   **Routes/Rivières :** Création de voies de communication et de transport entre les points d'intérêt.

## 5. Optimisation pour Mobile

*   **Génération en Threads :** Le processus de génération du monde doit être exécuté sur un thread séparé pour ne pas bloquer l'interface utilisateur et maintenir la fluidité du jeu.
*   **Génération par Chunks :** Le monde est divisé en chunks (morceaux) qui peuvent être générés et chargés de manière asynchrone, réduisant la charge mémoire et améliorant les performances sur mobile.

## 6. Références

[1] [Vision et Conception Globale](../00_vision_et_conception_globale.md)
[2] [README du Game Design](../README.md)
[3] [Gestion des Données Godot](../../verite_unique/gestion_donnees_godot.md#definitions-xml-et-migration)
[4] [Gestion des Données Godot](../../verite_unique/gestion_donnees_godot.md#definitions-xml-et-migration)

