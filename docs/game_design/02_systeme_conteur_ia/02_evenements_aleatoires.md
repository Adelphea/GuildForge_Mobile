# Événements Aléatoires - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [game-design, conteur-ia, événements, aléatoire, défis, narration-émergente, médiéval]

Ce document liste et décrit les différents types d'**événements aléatoires** qui peuvent survenir dans le jeu GuildForge Mobile, leurs déclencheurs, leurs conséquences et leur impact sur la colonie et les colons. Gérés par le [Maître du Récit](./01_maitres_du_recit.md), ces événements enrichissent la [Narration Émergente](../../verite_unique/glossaire.md#narration-émergente) et maintiennent l'intérêt du joueur en introduisant de la variété, des défis et des opportunités.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Catégories d'Événements](#2-catégories-dévenements)
    *   [Événements Météorologiques et Environnementaux](#21-événements-météorologiques-et-environnementaux)
    *   [Événements Sociaux et Humains](#22-événements-sociaux-et-humains)
    *   [Événements Faune et Flore](#23-événements-faune-et-flore)
3.  [Déclencheurs et Conséquences](#3-déclencheurs-et-conséquences)
    *   [Déclencheurs](#31-déclencheurs)
    *   [Conséquences](#32-conséquences)
4.  [Intégration Technique](#4-intégration-technique)
5.  [Références](#5-références)

---

## 1. Introduction

Les **événements aléatoires** sont des occurrences imprévues qui ponctuent la vie de la colonie dans GuildForge Mobile. Ils peuvent être positifs, négatifs ou neutres, et sont conçus pour introduire de la variété, des défis et des opportunités, forçant le joueur à s'adapter et à prendre des décisions stratégiques. Le [Maître du Récit](./01_maitres_du_recit.md) ajuste la fréquence et la nature de ces événements en fonction de l'état de la colonie et de la difficulté choisie [1].

## 2. Catégories d'Événements

Les événements peuvent être classés en plusieurs catégories, toutes ancrées dans un contexte médiéval et réaliste :

### 2.1. Événements Météorologiques et Environnementaux

Ces événements sont liés au climat et à l'environnement, et peuvent avoir un impact significatif sur l'agriculture, le moral et la survie de la colonie.

*   **Vague de Chaleur/Froid :** Périodes prolongées de températures extrêmes, affectant la santé des colons, la croissance des cultures et la consommation de ressources (eau, bois de chauffage).
*   **Tempête/Blizzard :** Conditions météorologiques violentes réduisant la visibilité, ralentissant les déplacements et pouvant endommager les structures.
*   **Sécheresse/Inondation :** Impact direct sur les récoltes et la disponibilité de l'eau, pouvant mener à la famine ou à la destruction des cultures.
*   **Incendie de Forêt :** Peut se propager rapidement, détruisant les ressources naturelles et menaçant la colonie.

### 2.2. Événements Sociaux et Humains

Ces événements impliquent des interactions avec d'autres humains ou des dynamiques internes à la colonie.

*   **Arrivée de Réfugiés/Voyageurs :** Des individus ou petits groupes arrivent à la colonie, offrant la possibilité de recruter de nouveaux colons ou de commercer. Ils peuvent aussi apporter des maladies ou des problèmes.
*   **Visite de Marchands :** Une caravane marchande arrive, offrant des opportunités de commerce de ressources rares ou d'objets précieux.
*   **Attaque de Bandits/Pillards :** Des groupes hostiles tentent de piller la colonie, nécessitant une défense active. La fréquence et la force dépendent des [relations avec les factions](../01_systeme_monde/03_factions_et_relations.md) [2].
*   **Maladie/Épidémie :** Une maladie se propage parmi les colons, nécessitant des soins médicaux et pouvant entraîner des pertes. La gravité varie.
*   **Dispute/Rixe :** Des conflits éclatent entre colons, affectant le moral et la productivité. Peut nécessiter l'intervention du joueur.
*   **Fête/Célébration :** Un événement positif augmentant le moral des colons et leur productivité.

### 2.3. Événements Faune et Flore

Ces événements sont liés à la vie sauvage et aux ressources naturelles.

*   **Attaque d'Animaux Sauvages :** Des animaux hostiles (loups, ours) attaquent les colons ou le bétail.
*   **Migration Animale :** Des troupeaux d'animaux passent près de la colonie, offrant des opportunités de chasse ou de domestication.
*   **Infestation de Ravageurs :** Des insectes ou rongeurs attaquent les cultures ou les stocks de nourriture.
*   **Découverte de Gisement :** Une nouvelle source de minerai ou de ressource rare est découverte à proximité.

## 3. Déclencheurs et Conséquences

### 3.1. Déclencheurs

Les événements sont déclenchés par le [Maître du Récit](./01_maitres_du_recit.md) en fonction de plusieurs facteurs :

*   **Temps :** Certains événements ont une probabilité de survenir à intervalles réguliers (ex: saisons, cycles lunaires).
*   **État de la Colonie :** Le niveau de richesse, le nombre de colons, le moral général, la quantité de nourriture, la force des défenses influencent le type et la difficulté des événements.
*   **Relations Factionnelles :** Les relations avec les factions voisines peuvent déclencher des événements diplomatiques, commerciaux ou militaires [2].
*   **Actions du Joueur :** Certaines actions du joueur (exploration, commerce agressif, provocation) peuvent directement déclencher des événements.

### 3.2. Conséquences

Les conséquences des événements sont variées et peuvent inclure :

*   **Impact sur les Colons :** Blessures, maladies, mort, changements de moral, acquisition de traits.
*   **Impact sur les Ressources :** Perte ou gain de nourriture, matériaux, objets précieux.
*   **Impact sur les Structures :** Dommages aux bâtiments, destruction de champs.
*   **Impact sur les Relations :** Amélioration ou dégradation des relations avec les factions.
*   **Nouvelles Opportunités :** Découverte de lieux, de quêtes, de technologies.

## 4. Intégration Technique

*   **`EventManager` :** Un module dédié gérera la file d'attente des événements, leur déclenchement et l'application de leurs effets.
*   **`EventDef` :** Chaque événement sera défini par une [Custom Resource Godot](../../verite_unique/glossaire.md#custom-resource-godot) (`EventDef`) spécifiant ses conditions de déclenchement, ses effets potentiels et ses textes descriptifs.
*   **`AI Storyteller` :** Le [Maître du Récit](./01_maitres_du_recit.md) interagira avec l'`EventManager` pour injecter des événements dans le jeu.

## 5. Références

[1] [Maîtres du Récit (AI Storytellers)](./01_maitres_du_recit.md)
[2] [Factions et Relations](../01_systeme_monde/03_factions_et_relations.md)
*   [README du Système Conteur IA](../README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

