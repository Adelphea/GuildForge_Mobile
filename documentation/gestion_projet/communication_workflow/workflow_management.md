# Gestion du Workflow de Développement - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.1
**Tags :** [workflow, développement, agile, git, gestion-projet, automatisation]

Ce document décrit le workflow de développement pour le projet GuildForge Mobile, en mettant l'accent sur les processus, les outils et les bonnes pratiques pour assurer une collaboration efficace, une gestion de projet transparente et une livraison continue. Il est conçu pour optimiser la progression du projet, en particulier avec l'intégration de l'IA générative et les contraintes du développement mobile.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Principes du Workflow](#2-principes-du-workflow)
3.  [Outils et Plateformes](#3-outils-et-plateformes)
4.  [Phases du Workflow](#4-phases-du-workflow)
    *   [Planification (Sprint Planning)](#41-planification-sprint-planning)
    *   [Développement et Intégration](#42-développement-et-intégration)
    *   [Tests et Assurance Qualité](#43-tests-et-assurance-qualité)
    *   [Revue et Rétrospective (Sprint Review & Retrospective)](#44-revue-et-rétrospective-sprint-review--retrospective)
5.  [Gestion des Branches Git](#5-gestion-des-branches-git)
6.  [Conventions de Commit](#6-conventions-de-commit)
7.  [Références](#7-références)

---

## 1. Introduction

La gestion du workflow de développement est cruciale pour la réussite de GuildForge Mobile, un projet développé sur mobile avec l'intégration de l'IA générative. Un workflow agile et adaptable est essentiel pour naviguer dans les complexités du développement de jeux, en particulier avec des ressources limitées. Ce document détaille les principes, les outils et les phases du workflow pour garantir une progression fluide et efficace.

## 2. Principes du Workflow

Le workflow de développement de GuildForge Mobile est guidé par les principes suivants :

*   **Agilité :** Adopter une approche agile avec des cycles de développement courts (sprints), des réunions régulières et une adaptation constante aux changements. Cela permet une flexibilité face aux défis imprévus et une amélioration continue.
*   **Transparence :** Assurer que l'état du projet, les tâches en cours et les problèmes sont visibles par tous les membres de l'équipe. Même pour un projet solo, la transparence aide à maintenir la clarté et la motivation.
*   **Automatisation :** Automatiser les tâches répétitives (tests, déploiement, génération de code/assets) pour réduire les erreurs humaines, accélérer le processus de développement et libérer du temps pour des tâches plus créatives.
*   **Documentation :** Maintenir une documentation à jour pour toutes les décisions, les processus et les fonctionnalités. Une documentation claire est la pierre angulaire d'un projet bien géré.

## 3. Outils et Plateformes

Les outils suivants sont utilisés pour soutenir le workflow de développement :

*   **Gestion de Projet :** Utilisation d'outils légers et accessibles sur mobile pour le suivi des tâches. Un simple fichier `todo.md` ou des applications comme Trello ou Google Keep peuvent être utilisés pour une gestion de tâches locale et un suivi simple.
*   **Contrôle de Version (Git) :** Git est utilisé pour le versionnement du code et de la documentation. Un dépôt distant (GitHub, GitLab) est essentiel pour la sauvegarde, la collaboration future et l'historique des modifications.
*   **Environnement de Développement :** Termux et Godot Engine sur Android constituent l'environnement de développement principal, permettant un développement direct sur l'appareil cible.
*   **Outils d'IA Générative :** L'agent Manus est l'outil d'IA générative principal pour le code et la documentation. Des outils comme ImagineArt, Picsart ou Leonardo.AI sont utilisés pour la génération d'assets visuels.

## 4. Phases du Workflow

Le workflow de développement est divisé en phases itératives :

### 4.1. Planification (Sprint Planning)

*   **Définition des Objectifs :** Définir les objectifs clairs et mesurables pour le sprint (généralement 1 à 2 semaines).
*   **Sélection des Tâches :** Sélectionner les tâches du backlog à réaliser pendant le sprint, en priorisant celles qui apportent le plus de valeur.
*   **Estimation :** Estimer le temps nécessaire pour chaque tâche afin de garantir une charge de travail réaliste.

### 4.2. Développement et Intégration

*   **Génération par IA :** Utiliser les outils d'IA pour générer du code ou des assets selon les besoins définis dans la planification.
*   **Validation et Révision :** Examiner manuellement le contenu généré par l'IA, le refactoriser si nécessaire pour s'assurer de sa qualité et de sa conformité aux conventions.
*   **Intégration :** Intégrer le code et les assets dans le projet Godot, en s'assurant de leur bon fonctionnement et de leur compatibilité.
*   **Tests Unitaires :** Écrire et exécuter des tests unitaires pour le code critique afin de garantir sa fiabilité.

### 4.3. Tests et Assurance Qualité

*   **Tests Fonctionnels :** Vérifier que les nouvelles fonctionnalités fonctionnent comme prévu et répondent aux exigences.
*   **Tests de Performance :** Profiler le jeu sur l'appareil cible pour identifier les goulots d'étranglement et optimiser les performances.
*   **Tests de Régression :** S'assurer que les nouvelles modifications n'ont pas introduit de bugs dans les fonctionnalités existantes.

### 4.4. Revue et Rétrospective (Sprint Review & Retrospective)

*   **Démonstration :** Présenter les fonctionnalités développées pendant le sprint aux parties prenantes.
*   **Feedback :** Recueillir les retours d'expérience et les suggestions d'amélioration.
*   **Rétrospective :** Analyser ce qui a bien fonctionné, ce qui peut être amélioré, et ajuster le workflow pour le prochain sprint afin d'optimiser le processus.

## 5. Gestion des Branches Git

Une stratégie de branchement Git claire est essentielle pour gérer le code source :

*   **`main` (ou `master`) :** Branche stable, toujours prête pour la production. Seules les versions validées y sont fusionnées.
*   **`develop` :** Branche d'intégration pour les nouvelles fonctionnalités. Toutes les branches de fonctionnalités y sont fusionnées après revue.
*   **`feature/<nom_fonctionnalite>` :** Branches dédiées au développement de nouvelles fonctionnalités. Elles sont fusionnées dans `develop` après revue et validation.
*   **`bugfix/<id_bug>` :** Branches pour la correction de bugs spécifiques. Elles peuvent être fusionnées dans `develop` ou directement dans `main` selon l'urgence.

## 6. Conventions de Commit

*   **Messages Clairs :** Les messages de commit doivent être concis et descriptifs, expliquant le but du changement. Utiliser un format standardisé (par exemple, Conventional Commits).
*   **Référence aux Tâches :** Référencer les tâches du gestionnaire de projet dans les messages de commit (par exemple, `feat: Ajout du système d'inventaire (Trello #123)`).

## 7. Références

*   [Stratégie de Développement IA](./strategie_developpement_ia.md)
*   [Conventions Générales](../conventions_directives/conventions_generales.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

