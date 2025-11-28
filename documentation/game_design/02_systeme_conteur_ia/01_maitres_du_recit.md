# Maîtres du Récit (AI Storytellers) - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [game-design, conteur-ia, narration-émergente, événements, difficulté, IA, médiéval]

Ce document décrit le fonctionnement des **Maîtres du Récit** (AI Storytellers), des algorithmes qui génèrent les événements et la narration émergente dans GuildForge Mobile. Inspirés par des concepts similaires à RimWorld, ces systèmes ajustent dynamiquement la difficulté et introduisent des situations variées, adaptées au style médiéval du jeu, pour créer une expérience narrative unique à chaque partie.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Principes de Fonctionnement](#2-principes-de-fonctionnement)
    *   [Adaptation Dynamique](#adaptation-dynamique)
    *   [Narration Émergente](#narration-émergente)
    *   [Thème Médiéval](#thème-médiéval)
3.  [Types de Maîtres du Récit](#3-types-de-maîtres-du-récit)
4.  [Intégration avec les Événements et Quêtes](#4-intégration-avec-les-événements-et-quêtes)
5.  [Références](#5-références)

---

## 1. Introduction

Inspiré par des jeux comme RimWorld, GuildForge Mobile intègre un système de **Maîtres du Récit**. Ces IA ne sont pas des personnages du jeu, mais des systèmes sous-jacents qui influencent le déroulement de la partie en générant des événements aléatoires, des défis et des opportunités. Leur objectif est de créer une expérience narrative unique et émergente pour chaque joueur, sans intervention directe de l'IA générative dans le jeu lui-même. Le concept de [Narration Émergente](#narration-émergente) est central à cette approche, où les histoires se construisent dynamiquement à partir des interactions du joueur avec le monde.

## 2. Principes de Fonctionnement

Les Maîtres du Récit opèrent selon plusieurs principes clés pour garantir une expérience de jeu équilibrée et engageante :

### Adaptation Dynamique

Le Conteur IA surveille constamment l'état de la colonie du joueur (nombre de colons, ressources, moral, défenses, etc.) et ajuste la fréquence et l'intensité des événements en conséquence. Si la colonie est trop prospère, des défis plus importants peuvent survenir ; si elle est en difficulté, des opportunités de répit ou d'aide peuvent être offertes.

### Narration Émergente

Plutôt que de suivre un scénario prédéfini, le Conteur IA génère des micro-histoires à travers une succession d'événements qui s'enchaînent logiquement. Ces histoires sont uniques à chaque partie et sont le résultat des interactions entre le joueur, le monde et les factions. Ce principe est détaillé dans le [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md#narration-émergente).

### Thème Médiéval

Tous les événements générés sont ancrés dans le contexte médiéval du jeu. Il n'y aura pas d'événements fantastiques ou de science-fiction. Les défis incluront des attaques de bandits, des épidémies, des famines, des hivers rigoureux, des arrivées de marchands ou de pèlerins, etc.

## 3. Types de Maîtres du Récit

Différents archétypes de Maîtres du Récit peuvent être choisis par le joueur au début de la partie, chacun ayant une philosophie distincte en matière de difficulté et de type d'événements :

*   **Cassandra Classique :** Offre une difficulté progressive et des défis constants, mais avec des périodes de calme pour permettre au joueur de se préparer. Elle vise à tester la résilience du joueur.
*   **Phoebe Douce :** Privilégie une expérience plus relaxante, avec des événements moins fréquents et moins intenses. Idéale pour les joueurs qui préfèrent se concentrer sur la construction et la gestion.
*   **Randy Aléatoire :** Introduit une grande imprévisibilité, avec des événements qui peuvent être extrêmes et inattendus, sans tenir compte de l'état de la colonie. Pour les joueurs qui aiment le chaos et les défis imprévus.

## 4. Intégration avec les Événements et Quêtes

Le Maître du Récit interagit directement avec les systèmes d'événements aléatoires et de quêtes :

*   **Déclenchement d'Événements :** Le Conteur IA décide quand et quel type d'événement déclencher, en fonction de ses règles et de l'état du jeu. Ces événements sont détaillés dans [Événements Aléatoires](./02_evenements_aleatoires.md).
*   **Proposition de Quêtes :** Il peut également proposer des quêtes au joueur, souvent en réponse à des événements ou à l'état de la colonie, comme décrit dans [Quêtes et Scénarios](./03_quetes_et_scenarios.md).

## 5. Références

*   [README du Système Conteur IA](../README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)
*   [Événements Aléatoires](./02_evenements_aleatoires.md)
*   [Quêtes et Scénarios](./03_quetes_et_scenarios.md)

