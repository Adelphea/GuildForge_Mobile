---
statut: Brouillon
version: 2.2
auteur: Manus, Architecte de Game Design et Spécialiste de l'Émergence (AGDSE)
date: 2025-11-30
tags: [GDD, vision, philosophie, lore, mobile, optimisation, projet-personnel, open-source]
---

# GDD-00 : Vision Globale et Principes Fondamentaux

Ce document établit la **Vision Globale** du jeu GuildForge Mobile, ses principes fondamentaux, et son positionnement unique en tant que "RimWorld-like" médiéval sur mobile. Il sert de référence pour s'assurer que toutes les décisions de *game design* et de développement restent alignées avec la direction artistique et les objectifs du projet.

## I. Objectif et Portée

Ce document établit la **Vision Globale** du jeu GuildForge Mobile, ses principes fondamentaux, et son positionnement unique en tant que "RimWorld-like" médiéval sur mobile. Il sert de référence pour s'assurer que toutes les décisions de *game design* et de développement restent alignées avec la direction artistique et les objectifs du projet.

## II. Principes Fondamentaux du Design

Le design du jeu est guidé par les principes suivants, en alignement avec le Manifeste du Projet :

| # | Principe | Domaine | Implication Clé |
| :--- | :--- | :--- | :--- |
| 1 | **Android Only & Performance** | Mobile | L'optimisation pour Android est la priorité absolue. |
| 2 | **Fidélité à la Source & Émergence** | Game Design | Rester fidèle à l'esprit RimWorld ; la complexité émerge de règles simples. |
| 3 | **Clarté et Maintenabilité** | Qualité | Le code et la documentation doivent être clairs, prévisibles et faciles à maintenir. |
| 4 | **Source de Vérité Unique (SSoT)** | Workflow | Chaque information critique n'existe qu'à un seul endroit (GDD, TDD, PMD). |
| 5 | **Structure Hybride & Composition** | Architecture | Utilisation de la Composition (CR Godot) pour la flexibilité et l'évolutivité. |

## III. Cadre de l'Univers et Lore

L'univers est médiéval, dépourvu d'éléments fantastiques ou de science-fiction. Toutes les mécaniques sont ancrées dans ce contexte.

### III.1. Principes Fondamentaux du Lore

*   **Rejet du fantastique et de la science-fiction :** Tous les concepts, objets et mécaniques doivent être plausibles dans un contexte médiéval.
*   **Contexte Narratif :** Le monde de GuildForge est un continent ancien, fragmenté. Le joueur commence avec un petit groupe de colons cherchant un nouveau départ.

### III.2. Concepts Adaptés et Exclus

| Concept RimWorld | Réinterprétation Médiévale | Statut |
| :--- | :--- | :--- |
| **Narration Émergente** | Maître du Récit générant des événements ancrés dans le contexte médiéval (raids de bandits, épidémies, famines). | **Adapté** |
| **Gestion des Factions** | Factions basées sur des ordres religieux, seigneurs locaux, et groupes de bandits. | **Adapté** |
| **Technologie Avancée** | Exclue. Remplacée par des améliorations corporelles rudimentaires (prothèses en bois). | **Exclu** |
| **Tourelles Automatiques** | Remplacées par des défenses médiévales : archers, balistes, trébuchets. | **Adapté** |
| **Maladies Exotiques** | Remplacées par des maladies médiévales : peste, dysenterie, blessures infectées. | **Adapté** |

## IV. Plateforme et Optimisation

Le jeu est développé principalement pour les appareils mobiles Android. L'optimisation est une contrainte de design fondamentale.

*   **Référence d'Optimisation :** Samsung Galaxy A54 5G.
*   **Style Visuel :** **Pixel Art 2D** avec une **vue isométrique ou de dessus**, optimisé pour la lisibilité sur petits écrans.
*   **Palette de Couleurs :** Terreuse et naturelle, inspirée des enluminures médiévales.

## V. Équilibrage du Jeu

L'équilibrage est un processus continu basé sur des principes clairs.

### V.1. Principes d'Équilibrage

1.  **Progression Cohérente :** Difficulté et récompenses augmentent de manière prévisible.
2.  **Choix Significatifs :** Chaque décision du joueur a un impact perceptible.
3.  **Éviter les Stratégies Dominantes :** Encourager la diversité et l'expérimentation.
4.  **Boucle de Feedback Claire :** Fournir des retours immédiats sur les actions.
5.  **Équilibrage Mobile-First :** Tenir compte des sessions de jeu courtes et de l'interface tactile.

### V.2. Outils et Dépendances

*   **Outils :** Feuilles de Calcul Détaillées, Tests de Jeu (Playtesting), Analyse de Données de Jeu.
*   **Dépendances Techniques :** Le jeu utilise des **Paramètres Configurables** via des Godot Resources pour faciliter les ajustements rapides sans recompilation (Principe 5).

## VI. Vision Personnelle et Statut du Projet

Ce projet est un développement personnel et open source. La vision est centrée sur le plaisir de la création et l'apprentissage, sans objectif commercial initial.

### VI.1. Public Cible (Vision Personnelle)

| Caractéristique | Description |
| :--- | :--- |
| **Public Cible** | Le créateur du jeu (l'utilisateur). |
| **Objectif Principal** | Plaisir de la création et apprentissage du développement de jeux. |
| **Statut** | Projet personnel, open source, sans vocation commerciale. |

### VI.2. Statut de Monétisation (Open Source)

Le jeu sera livré en **Open Source** et **gratuitement** à la fin du développement. Aucune stratégie de monétisation n'est prévue.

| Modèle | Description | Justification Design |
| :--- | :--- | :--- |
| **Monétisation** | Aucune. | Le jeu est un projet personnel et sera distribué gratuitement. |
| **Licence** | Open Source (à définir). | Permet à la communauté de contribuer et d'apprendre. |

## VII. Historique de Révision

| Version | Date | Auteur | Description |
| :--- | :--- | :--- | :--- |
| 1.0 | 2025-10-12 | Manus AI | Création initiale du document. |
| 2.0 | 2025-11-30 | Manus AGDSE | Refonte structurelle (YAML, Romaine, Tableaux) et alignement sur le Manifeste. |
| 2.1 | 2025-11-30 | Manus AGDSE | Ajout des sections Public Cible et Stratégie de Monétisation. |
| **2.2** | **2025-11-30** | **Manus AGDSE** | **Retrait des sections Public Cible et Monétisation ; Remplacement par la Vision Personnelle et le Statut Open Source.** |

---
*Ce document est une refonte de l'ancienne "Vision Globale" et applique les conventions de documentation (YAML Front Matter, numérotation romaine, tableaux structurés).*
