---
statut: Brouillon
version: 1.0
auteur: Manus, Architecte de Game Design et Spécialiste de l'Émergence (AGDSE)
date: 2025-11-30
tags: [GDD, conteur-ia, narration-émergente, événements, quêtes, RimWorld-like]
---

# GDD-02 : Système Conteur IA et Narration Émergente

Ce document consolide la conception du **Système Conteur IA** (Maîtres du Récit), des **Événements Aléatoires** et des **Quêtes/Scénarios**. L'objectif est de créer une expérience narrative émergente unique à chaque partie, en alignement avec la philosophie de design RimWorld-like.

## I. Maîtres du Récit (AI Storytellers)

Les Maîtres du Récit sont les systèmes sous-jacents qui influencent le déroulement de la partie en générant des événements, des défis et des opportunités.

### I.1. Principes de Fonctionnement

| Principe | Description | Implication Design |
| :--- | :--- | :--- |
| **Adaptation Dynamique** | Le Conteur IA surveille l'état de la colonie (ressources, moral, défenses) et ajuste la fréquence et l'intensité des événements. | Assure une difficulté progressive et un équilibre entre défis et répit. |
| **Narration Émergente** | Les micro-histoires se construisent dynamiquement à travers une succession d'événements et d'interactions, sans scénario prédéfini. | Le joueur est l'acteur principal d'une histoire unique, favorisant la rejouabilité. |
| **Thème Médiéval** | Tous les événements générés sont ancrés dans le contexte médiéval (bandits, épidémies, famines, hivers rigoureux). | Maintient la cohérence de l'univers du jeu. |

### I.2. Types de Maîtres du Récit

Le joueur choisit un archétype au début de la partie, définissant la philosophie de difficulté :

| Archétype | Philosophie | Expérience de Jeu |
| :--- | :--- | :--- |
| **Cassandra Classique** | Difficulté progressive et défis constants, avec des périodes de calme. | Teste la résilience et la gestion à long terme. |
| **Phoebe Douce** | Expérience plus relaxante, événements moins fréquents et moins intenses. | Axée sur la construction et la gestion sans stress excessif. |
| **Randy Aléatoire** | Grande imprévisibilité, événements extrêmes et inattendus, sans tenir compte de l'état de la colonie. | Pour les joueurs qui aiment le chaos et les défis imprévus. |

## II. Événements Aléatoires

Les événements sont des occurrences imprévues qui ponctuent la vie de la colonie. Ils sont déclenchés par le Maître du Récit.

### II.1. Catégories d'Événements

| Catégorie | Exemples | Impact Principal |
| :--- | :--- | :--- |
| **Météorologiques** | Vague de Chaleur/Froid, Tempête/Blizzard, Sécheresse/Inondation. | Santé des colons, agriculture, consommation de ressources. |
| **Sociaux et Humains** | Arrivée de Réfugiés/Marchands, Attaque de Bandits/Pillards, Maladie/Épidémie, Dispute/Rixe. | Moral, recrutement, commerce, défense. |
| **Faune et Flore** | Attaque d'Animaux Sauvages, Migration Animale, Infestation de Ravageurs, Découverte de Gisement. | Sécurité, ressources, opportunités d'exploitation. |

### II.2. Déclencheurs et Conséquences

*   **Déclencheurs :** Temps (saisons), État de la Colonie (richesse, moral), Relations Factionnelles, Actions du Joueur.
*   **Conséquences :** Blessures/Maladies/Mort des colons, Perte/Gain de ressources, Dommages aux structures, Changement de relations factionnelles.

### II.3. Intégration Technique (TDD-03)

*   **`EventManager` :** Module gérant la file d'attente et le déclenchement des événements.
*   **`EventDef` :** Chaque événement est défini par une Custom Resource Godot spécifiant ses conditions de déclenchement et ses effets.

## III. Quêtes et Scénarios

Les quêtes et scénarios sont des objectifs structurés qui guident le joueur et enrichissent l'histoire.

### III.1. Scénarios de Départ

Les scénarios définissent les conditions initiales de la partie (colons, items, technologies, modificateurs).

| Scénario (Exemple) | Colons | Items de Départ | Modificateurs |
| :--- | :--- | :--- | :--- |
| **Atterrissage Forcé** | 3 | Ressources de base, Armes simples. | Aucun |
| **Tribu Perdue** | 5 | Ressources naturelles, Outils primitifs. | Hostilité animale accrue. |
| **L'Explorateur Solitaire** | 1 | Ressources de valeur, Armure. | Solitude (malus d'humeur). |

### III.2. Types de Quêtes

Les quêtes sont des objectifs à court/moyen terme déclenchés par le Maître du Récit ou les factions.

*   **Collecte :** Rassembler une ressource.
*   **Construction :** Bâtir une structure spécifique.
*   **Sauvetage/Escorte :** Secourir un personnage ou escorter une caravane.
*   **Élimination :** Neutraliser une menace (bandits, bêtes).
*   **Exploration :** Découvrir un lieu ancien.
*   **Diplomatiques :** Négocier un traité ou livrer un message.

### III.3. Gestion des Quêtes

*   **Déclenchement :** Basé sur l'état du jeu, les relations factionnelles et les actions du joueur.
*   **Récompenses :** Ressources, objets rares, colons, amélioration de la réputation.
*   **Interface :** Un journal de quêtes permet le suivi des objectifs.

## IV. Historique de Consolidation

Ce document consolide les anciens fichiers :
*   `02_systeme_conteur_ia/01_maitres_du_recit.md`
*   `02_systeme_conteur_ia/02_evenements_aleatoires.md`
*   `02_systeme_conteur_ia/03_quetes_et_scenarios.md`
