# Quêtes et Scénarios - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 11 Octobre 2025
**Version :** 1.1
**Tags :** [game-design, conteur-ia, quêtes, scénarios, objectifs, narration, gameplay]

Ce document détaille la conception des **quêtes** (objectifs à court et moyen terme) et des **scénarios de départ** (conditions initiales et objectifs à long terme) pour GuildForge Mobile. L'objectif est d'assurer leur cohérence avec l'univers médiéval et le système de [Narration Émergente](../../verite_unique/glossaire.md#narration-émergente), en s'appuyant sur l'action du [Maître du Récit](./01_maitres_du_recit.md).

---

## 1. Introduction

Les quêtes et les scénarios sont des éléments essentiels pour guider le joueur, introduire des défis et enrichir l'histoire de la colonie. Ils sont conçus pour être variés, stimulants et intégrés de manière organique dans l'expérience de jeu, en grande partie grâce à l'action du [Maître du Récit](./01_maitres_du_recit.md) [1]. Ils offrent une rejouabilité significative en proposant des expériences de départ et des objectifs dynamiques.

## 2. Scénarios de Départ

Le processus de création d'une nouvelle partie est une étape fondamentale qui définit les conditions initiales de l'expérience du joueur. Il comprend la sélection d'un scénario, le choix du [Maître du Récit](./01_maitres_du_recit.md) et de la difficulté, la génération du monde et la personnalisation des colons.

### 2.1. Flux de Démarrage du Jeu

Le joueur sera guidé à travers une série d'écrans pour configurer sa nouvelle partie, incluant la sélection du scénario, du Maître du Récit, de la difficulté, la génération du monde et la personnalisation des colons. Pour un descriptif détaillé du flux de démarrage, se référer au document dédié (à créer ou consolider).

### 2.2. Exemples de Scénarios de Départ

Chaque scénario offre une expérience de départ unique avec des défis et des avantages spécifiques. Le tableau ci-dessous présente des exemples inspirés de jeux de gestion de colonie, adaptés à l'univers de GuildForge Mobile.

**Tableau 1 : Exemples de Scénarios de Départ et leurs Caractéristiques**

| Scénario (Inspiration RimWorld) | Colons de Départ | Items de Départ (Exemples) | Animaux de Départ (Exemples) | Technologies de Départ (Exemples) | Modificateurs de Jeu (Exemples) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Atterrissage Forcé (Crashlanded)** | 3 | Nourriture, Bois, Fer, Armes de base | Aucun | Agriculture de base, Construction simple | Aucun |
| **Tribu Perdue (Lost Tribe)** | 5 | Baies, Viande crue, Arcs, Lances | Chien (x1) | Feu, Outils en pierre | Hostilité accrue des animaux sauvages |
| **L'Explorateur Solitaire** | 1 | Argent, Outils de maître, Armure de plates | Cheval (x1) | Forge avancée, Ingénierie de siège | Solitude (malus d'humeur) |
| **Brutalité Nue (Naked Brutality)** | 1 | Aucun | Aucun | Aucune | Froid extrême, Pas de vêtements |

### 2.3. Éditeur de Scénario Personnalisé

Un éditeur permettra au joueur de créer et de sauvegarder ses propres scénarios en ajustant les paramètres suivants :

*   **Items et Animaux de Départ :** Ajout/suppression d'items et d'animaux avec spécification de la quantité.
*   **Nombre de Colons :** Augmentation/diminution du nombre de colons initiaux.
*   **Technologies de Départ :** Ajout/suppression de technologies de l'[arbre technologique médiéval](../06_systeme_recherche_et_progression/01_arbre_technologique_medieval.md).
*   **Modificateurs de Jeu :** Ajout/suppression de modificateurs permanents (climat, fertilité, etc.).
*   **Événements Initiaux :** Ajout/suppression d'événements spécifiques au début de la partie.

## 3. Système de Quêtes

Les quêtes sont des objectifs à court et moyen terme qui sont proposés au joueur par le [Maître du Récit](./01_maitres_du_recit.md) ou par des [factions](../01_systeme_monde/03_factions_et_relations.md). Elles sont conçues pour être dynamiques et variées, offrant des récompenses et des défis.

### 3.1. Types de Quêtes

*   **Quêtes de Collecte :** Rassembler une certaine quantité d'une ressource spécifique pour une faction ou pour la colonie.
*   **Quêtes de Construction :** Bâtir une structure particulière (ex: un monument, une défense) en un temps imparti.
*   **Quêtes de Sauvetage/Escorte :** Secourir un personnage ou escorter une caravane à travers un territoire dangereux.
*   **Quêtes d'Élimination :** Éliminer une menace (un camp de bandits, une bête dangereuse) pour une faction ou pour la sécurité de la région.
*   **Quêtes d'Exploration :** Explorer un lieu ancien, une ruine ou une grotte pour y découvrir des trésors ou des informations.
*   **Quêtes Diplomatiques :** Négocier un traité de paix, livrer un message ou organiser une rencontre entre factions.

### 3.2. Génération et Gestion des Quêtes

*   **Déclenchement :** Les quêtes sont déclenchées par le [Maître du Récit](./01_maitres_du_recit.md) en fonction de l'état du jeu, des relations avec les factions et des actions du joueur.
*   **Objectifs et Conditions :** Chaque quête a des objectifs clairs, des conditions de réussite et d'échec, et une durée limitée.
*   **Récompenses :** Les récompenses peuvent inclure des ressources, de l'argent, des objets rares, des colons, une amélioration de la réputation ou de nouvelles technologies.
*   **Interface :** Un journal de quêtes permettra au joueur de suivre ses objectifs en cours et de consulter les détails de chaque quête.

## 4. Intégration et Dépendances

Le système de quêtes et de scénarios est étroitement lié à plusieurs autres systèmes du jeu :

*   **Maître du Récit :** Le [Conteur IA](./01_maitres_du_recit.md) est le principal moteur de la génération de quêtes et d'événements [1].
*   **Factions et Relations :** De nombreuses quêtes sont liées aux [factions et relations](../01_systeme_monde/03_factions_et_relations.md) et influencent les relations diplomatiques [2].
*   **Gestion des Colons :** Les compétences et la disponibilité des colons sont cruciales pour la réussite des quêtes, comme détaillé dans le [système de personnages](../03_systeme_personnages/README.md).
*   **Système de Monde :** L'exploration du monde et la découverte de lieux sont souvent des éléments clés des quêtes, en lien avec les [voyages et caravanes](../01_systeme_monde/04_voyages_et_caravanes.md) [3].

## 5. Références

[1] [Maîtres du Récit (AI Storytellers)](./01_maitres_du_recit.md)
[2] [Factions et Relations](../01_systeme_monde/03_factions_et_relations.md)
[3] [Voyages et Caravanes](../01_systeme_monde/04_voyages_et_caravanes.md)
*   [GDD Maître](../README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

