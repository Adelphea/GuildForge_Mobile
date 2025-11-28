# Jalons et Objectifs - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [jalons, objectifs, roadmap, planification, développement, agile]

Ce document détaille les jalons et objectifs clés pour le développement de GuildForge Mobile, structurant le projet en phases claires avec des livrables spécifiques. Il sert de feuille de route pour l'équipe de développement, y compris l'agent Manus, en fournissant une vision claire des étapes à franchir pour atteindre la version finale du jeu.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Philosophie de Développement](#2-philosophie-de-développement)
3.  [Phases de Développement](#3-phases-de-développement)
    *   [Phase 1 : Prototype de Base (Itérations 1-3)](#phase-1--prototype-de-base-itérations-1-3)
    *   [Phase 2 : Alpha - Mécaniques de Survie (Itérations 4-6)](#phase-2--alpha---mécaniques-de-survie-itérations-4-6)
    *   [Phase 3 : Bêta - Contenu et Systèmes Avancés (Itérations 7-10)](#phase-3--bêta---contenu-et-systèmes-avancés-itérations-7-10)
    *   [Phase 4 : Polissage et Optimisation (Itérations 11-12)](#phase-4--polissage-et-optimisation-itérations-11-12)
    *   [Phase 5 : Lancement et Support Post-Lancement](#phase-5--lancement-et-support-post-lancement)
4.  [Guide d'Implémentation v0.1](#4-guide-dimplémentation-v01)
    *   [Architecture Mise à Jour](#41-architecture-mise-à-jour)
    *   [Étapes d'Implémentation](#42-étapes-dimplémentation)
        *   [Configuration du Projet Godot](#421-configuration-du-projet-godot)
        *   [Implémentation des Systèmes de Base](#422-implémentation-des-systèmes-de-base)
        *   [Génération de Monde](#423-génération-de-monde)
        *   [Interface Utilisateur de Base](#424-interface-utilisateur-de-base)
    *   [Tests et Validation](#43-tests-et-validation)
    *   [Optimisations Mobile](#44-optimisations-mobile)
    *   [Prochaines Étapes](#45-prochaines-étapes)
5.  [Plan de Développement Itératif et Rigoureux avec l'Agent Manus](#5-plan-de-développement-itératif-et-rigoureux-avec-lagent-manus)
    *   [Principes Fondamentaux du Workflow de Développement](#51-principes-fondamentaux-du-workflow-de-développement)
    *   [Cycle de Développement Détaillé par Version (v0.x)](#52-cycle-de-développement-détaillé-par-version-v0x)
        *   [Initialisation de la Version par l'Utilisateur](#521-initialisation-de-la-version-par-lutilisateur)
        *   [Développement Autonome par l'Agent Manus](#522-développement-autonome-par-lagent-manus)
        *   [Livraison à l'Utilisateur pour Tests](#523-livraison-à-lutilisateur-pour-tests)
        *   [Tests et Retour Utilisateur (Critique)](#524-tests-et-retour-utilisateur-critique)
        *   [Itération ou Archivage](#525-itération-ou-archivage)
6.  [Références](#6-références)

---

## 1. Introduction

La planification du développement de GuildForge Mobile est structurée autour de jalons et d'objectifs définis, permettant une progression mesurable et une gestion efficace des ressources. Ce document sert de feuille de route pour l'équipe de développement, y compris l'agent Manus, en fournissant une vision claire des étapes à franchir pour atteindre la version finale du jeu.

## 2. Philosophie de Développement

La philosophie de développement de GuildForge Mobile est guidée par les principes généraux d'agilité, de transparence, d'automatisation et de documentation. Ces principes sont détaillés dans le document [Conventions Générales](../conventions_directives/conventions_generales.md) et le [Workflow de Développement](../communication_workflow/workflow_management.md).

## 3. Phases de Développement

Le développement de GuildForge Mobile est divisé en plusieurs phases itératives, chacune avec des objectifs clairs et des livrables spécifiques.

### Phase 1 : Prototype de Base (Itérations 1-3)

*   **Objectif :** Créer un prototype jouable avec les mécaniques de base.
*   **Fonctionnalités Clés :**
    *   Gestion d'un petit groupe de colons (besoins de base : faim, sommeil, hygiène).
    *   Construction de structures simples (murs, sols, lits).
    *   Collecte de ressources de base (bois, pierre, nourriture).
    *   Interface utilisateur minimale pour la sélection et les commandes de base.
    *   Cycle jour/nuit simple.
*   **Livrables :** Une version APK du prototype, jouable sur le Samsung Galaxy A54 5G.

### Phase 2 : Alpha - Mécaniques de Survie (Itérations 4-6)

*   **Objectif :** Étendre le prototype avec des mécaniques de survie plus complexes.
*   **Fonctionnalités Clés :**
    *   Système de santé (blessures, maladies de base).
    *   Agriculture et élevage de base.
    *   Artisanat simple (outils, armes de base).
    *   Menaces simples (animaux sauvages, bandits).
    *   Système de combat de base (mêlée et distance).
    *   Défenses simples (palissades, pièges).
*   **Livrables :** Une version Alpha du jeu, avec une boucle de jeu de survie complète.

### Phase 3 : Bêta - Contenu et Systèmes Avancés (Itérations 7-10)

*   **Objectif :** Enrichir le jeu avec plus de contenu et des systèmes plus profonds.
*   **Fonctionnalités Clés :**
    *   Système de recherche médiévale.
    *   Chaînes de production plus complexes (métallurgie, tissage).
    *   Système de commerce avec des caravanes et des factions.
    *   Système d'idéologies et de moral plus développé.
    *   Plus de types de bâtiments, d'objets, d'armes et d'armures.
    *   Quêtes simples et événements aléatoires.
*   **Livrables :** Une version Bêta du jeu, avec la plupart des fonctionnalités prévues et un contenu significatif.

### Phase 4 : Polissage et Optimisation (Itérations 11-12)

*   **Objectif :** Améliorer la qualité globale du jeu, corriger les bugs et optimiser les performances.
*   **Activités Clés :**
    *   Correction intensive des bugs.
    *   Optimisation des performances (code, assets).
    *   Amélioration de l'interface utilisateur et de l'expérience utilisateur.
    *   Équilibrage du gameplay (difficulté, économie, combat).
    *   Ajout de tutoriels et d'aides de jeu.
*   **Livrables :** Une version quasi finale du jeu, stable et optimisée.

### Phase 5 : Lancement et Support Post-Lancement

*   **Objectif :** Publier le jeu et fournir un support continu.
*   **Activités Clés :**
    *   Préparation de la version finale pour la publication.
    *   Correction des bugs signalés par les joueurs.
    *   Ajout de contenu supplémentaire (nouvelles quêtes, objets, événements) par le biais de mises à jour.

## 4. Guide d'Implémentation v0.1

Ce guide détaillé pour l'implémentation de la version 0.1 de GuildForge dans Godot Engine 4.5 s'appuie sur la roadmap établie et les conventions de codage définies pour assurer une implémentation cohérente et structurée des fondations techniques du jeu.

### 4.1. Architecture Mise à Jour

Pour une description détaillée de l'architecture mise à jour, veuillez consulter la [Vue d'ensemble de l'Architecture](../../technique/architecture_code/README.md).

### 4.2. Étapes d'Implémentation

#### 4.2.1. Configuration du Projet Godot

*   **Création du Projet :** Ouvrir Godot Engine 4.5, créer un nouveau projet avec les paramètres mobiles optimisés, configurer la résolution de base (1080x1920 pour portrait, 1920x1080 pour paysage), et activer les contrôles tactiles dans les paramètres d'entrée.
*   **Structure du Projet :** Créer la structure `res://guildforge/` selon l'organisation définie, importer les scripts créés dans les dossiers appropriés, et configurer les autoloads pour les gestionnaires principaux.

#### 4.2.2. Implémentation des Systèmes de Base

*   **Système de Définitions :** Intégrer les classes `BaseDefinition`, `GameDefinition`, `ItemDefinition`, `ThingDefinition`. Pour la gestion des données et la clarification du rôle des fichiers XML, se référer à [Gestion des Données Godot](../../verite_unique/gestion_donnees_godot.md). Tester le chargement des définitions de test et valider la hiérarchie d'héritage.
*   **DataManager :** Configurer comme autoload, implémenter le chargement des données de test, et tester l'accès aux définitions via l'API publique.
*   **GameManager :** Configurer comme autoload principal, implémenter la gestion des états de jeu, et connecter avec le `DataManager`.

#### 4.2.3. Génération de Monde

*   **WorldGenerator :** Implémenter l'algorithme de génération de terrain de base, créer les structures de données pour les tuiles, et tester la génération avec différentes graines.
*   **Affichage de la Carte :** Créer une scène pour l'affichage du monde, implémenter le rendu des tuiles avec `TileMap`, et ajouter la gestion de la caméra (zoom, déplacement).

#### 4.2.4. Interface Utilisateur de Base

*   **HUD Principal :** Créer l'interface utilisateur minimale, implémenter l'affichage des ressources, et ajouter les contrôles tactiles de base.
*   **Système d'Entrée :** Configurer la détection des touches tactiles, implémenter la sélection d'objets, et ajouter la gestion du déplacement de caméra.

### 4.3. Tests et Validation

*   **Tests Unitaires :** Chaque composant du jeu doit être testé individuellement pour s'assurer de son bon fonctionnement et de sa conformité aux spécifications. Cela inclut la vérification des classes de définition, des fonctions utilitaires et des logiques spécifiques.
*   **Tests d'Intégration :** Vérifier que les différents systèmes et composants interagissent correctement entre eux. Les points clés à valider sont le chargement et l'accès aux données, la communication entre les gestionnaires, la génération et l'affichage du monde, et l'interaction utilisateur.
*   **Tests de Performance :** L'optimisation pour mobile étant cruciale, des tests de performance réguliers sont nécessaires pour mesurer l'impact des nouvelles fonctionnalités sur l'appareil cible. Surveiller le framerate, l'utilisation de la mémoire, le temps de chargement et la réactivité.

### 4.4. Optimisations Mobile

*   **Gestion de la Mémoire :** Utiliser des pools d'objets pour les entités fréquemment créées/détruites, limiter le nombre de tuiles affichées simultanément, et implémenter un système de chargement/déchargement des ressources.
*   **Performance Graphique :** Utiliser des atlas de textures pour réduire les draw calls, optimiser les shaders pour les GPU mobiles, et implémenter un système de LOD (Level of Detail) si nécessaire.
*   **Interface Tactile :** Tailles de boutons adaptées aux doigts (minimum 44x44 pixels), zones de toucher étendues pour une meilleure précision, et feedback visuel immédiat pour toutes les interactions.

### 4.5. Prochaines Étapes

Une fois la v0.1 implémentée et testée, les prochaines étapes incluront :

1.  **Système de Colons (v0.2) :** Création des entités colon, gestion des besoins et des tâches, IA de base pour les comportements.
2.  **Système de Construction (v0.2) :** Placement d'objets sur la carte, validation des emplacements, interface de construction.
3.  **Contenu Étendu (v0.3) :** Plus de types de bâtiments et d'objets, système d'événements, combat de base.

Cette approche itérative garantit une progression stable et testée à chaque étape du développement.

## 5. Plan de Développement Itératif et Rigoureux avec l'Agent Manus

Ce plan présente une version améliorée et rigoureuse du plan de développement, établissant un cadre de travail autonome, efficace, exhaustif et pertinent pour l'agent Manus, en collaboration étroite avec l'utilisateur. L'objectif est de garantir une progression structurée et vérifiable du projet, de la version `v0.x` jusqu'à la version finale, en s'appuyant sur un processus itératif et une traçabilité complète.

### 5.1. Principes Fondamentaux du Workflow de Développement

Le processus de développement est ancré dans les principes suivants, visant à maximiser la qualité et l'efficacité :

*   **Développement Itératif et Versionné :** Le jeu évoluera par des versions incrémentales (`v0.x`, `v0.x+1`, etc.), chacune intégrant un ensemble défini de fonctionnalités ou de corrections. Chaque nouvelle version sera construite sur la base de la version précédente validée, assurant une continuité et évitant les régressions.
*   **Agent Manus comme Pilier du Développement :** L'agent Manus est le moteur principal de l'implémentation technique. Il est responsable de la traduction des exigences utilisateur en code Godot fonctionnel, en respectant les conventions établies et en assurant la qualité du code.
*   **Validation Utilisateur Exclusive et Rigoureuse :** L'utilisateur est l'unique entité responsable des tests fonctionnels et de l'expérience utilisateur au sein de Godot Engine v4.5. Cette distinction claire des rôles évite les ambiguïtés et capitalise sur les forces de chaque partie.
*   **Traçabilité Complète et Archivage Systématique :** Chaque étape du développement, de la feuille de route initiale à la version finale validée, sera documentée et archivée. Cela inclut les rapports de suivi, les modifications de code, et les décisions clés, garantissant une compréhension historique et une capacité de revenir en arrière si nécessaire.
*   **Communication Structurée et Précise :** Tous les échanges entre l'utilisateur et l'agent Manus doivent être clairs, concis et utiliser un format standardisé. Les requêtes de l'utilisateur doivent être atomiques et bien définies, et les retours de l'agent Manus doivent être explicites et compréhensibles.

### 5.2. Cycle de Développement Détaillé par Version (v0.x)

Le cycle de vie de chaque version `v0.x` est un processus en boucle fermée, garantissant une validation progressive et une intégration continue.

#### 5.2.1. Initialisation de la Version par l'Utilisateur

L'utilisateur initie le cycle en fournissant à l'agent Manus :

1.  **Le Projet Godot de Base :** Il s'agira soit d'un projet Godot vierge (pour la toute première version), soit du dossier `guildforge` de la version `v0.x-1` validée et archivée.
2.  **La Feuille de Route de la Version (FDR-v0.x) :** Un document Markdown détaillé spécifiant les fonctionnalités, les corrections de bugs et les améliorations à implémenter pour la version `v0.x`. Cette feuille de route doit être :
    *   **Atomique :** Chaque point doit représenter une tâche unique et réalisable.
    *   **Spécifique :** Décrire précisément le comportement attendu, les entrées, les sorties et les contraintes (ex: "Créer un menu principal avec un bouton 'Nouvelle Partie' qui charge la scène 'res://scenes/main_game.tscn'").
    *   **Priorisée :** Indiquer l'ordre d'importance des tâches.
    *   **Testable :** Chaque fonctionnalité doit être accompagnée de critères de validation clairs pour les tests utilisateur.

#### 5.2.2. Développement Autonome par l'Agent Manus

L'agent Manus procède au développement en suivant une série d'étapes internes rigoureuses :

1.  **Analyse Approfondie des Exigences :** L'agent Manus analyse la FDR-v0.x pour décomposer les tâches en sous-tâches techniques (création de scripts, modification de scènes, intégration d'assets, etc.). Toute ambiguïté ou contradiction sera signalée à l'utilisateur pour clarification avant de poursuivre.
2.  **Planification Technique Interne :** Élaboration d'un plan d'implémentation détaillé, incluant les fichiers à modifier, les nouvelles structures à créer, et les dépendances. Ce plan est interne à l'agent et peut être communiqué sur demande.
3.  **Implémentation des Fonctionnalités :** L'agent Manus développe le code GDScript, crée ou modifie les scènes Godot, intègre les assets, et effectue toutes les modifications nécessaires au dossier `guildforge` pour répondre aux exigences de la FDR-v0.x. Les conventions de codage et d'architecture existantes seront strictement respectées.
4.  **Tests Internes (non-graphiques) :** L'agent Manus effectuera des tests automatisés (tests unitaires, vérification de syntaxe, analyse statique de code) sur les composants développés. **Il est rappelé que l'agent Manus n'effectuera aucun test nécessitant une interface graphique Godot Engine v4.5, cette tâche étant la responsabilité exclusive de l'utilisateur.**
5.  **Préparation de la Livraison :** Une fois le développement et les tests internes terminés, l'agent Manus prépare le dossier `guildforge` pour la livraison. Il génère également un `rapport_de_suivi_v0.x.md` détaillé, décrivant les implémentations, les décisions prises, les problèmes rencontrés et les solutions apportées.

#### 5.2.3. Livraison à l'Utilisateur pour Tests

L'agent Manus compresse le dossier `guildforge` en `guildforge_v0.x.zip` et le transmet à l'utilisateur, accompagné du `rapport_de_suivi_v0.x.md`. L'agent se mettra en attente active du retour de l'utilisateur.

#### 5.2.4. Tests et Retour Utilisateur (Critique)

L'utilisateur est chargé d'une phase de test exhaustive et critique :

1.  **Décompression et Intégration :** L'utilisateur décompresse `guildforge_v0.x.zip` et l'intègre dans son environnement Godot Engine v4.5.
2.  **Tests Fonctionnels :** L'utilisateur exécute le jeu et teste toutes les fonctionnalités implémentées selon les critères de validation définis dans la FDR-v0.x.
3.  **Tests d'Expérience Utilisateur (UX) :** L'utilisateur évalue l'ergonomie, la fluidité et l'intuitivité de l'interface et des mécaniques de jeu.
4.  **Rapport de Retour :** L'utilisateur rédige un `rapport_de_retour_v0.x.md` détaillé, incluant les bugs identifiés, les suggestions d'amélioration, et une validation formelle des fonctionnalités. Ce rapport doit être précis et constructif.

#### 5.2.5. Itération ou Archivage

*   **Si des Problèmes sont Identifiés :** L'utilisateur transmet le `rapport_de_retour_v0.x.md` à l'agent Manus, qui initie un nouveau cycle de développement pour la version `v0.x+1` en se basant sur les corrections et améliorations demandées.
*   **Si la Version est Validée :** L'utilisateur confirme la validation de la version `v0.x`. L'agent Manus archive le dossier `guildforge` de cette version (par exemple, `guildforge_v0.x_archive.zip`) et met à jour la documentation générale du projet pour refléter la nouvelle version stable. Le cycle se termine, et l'utilisateur peut initier le développement de la prochaine version majeure.

## 6. Références

*   [Conventions Générales](../conventions_directives/conventions_generales.md)
*   [Gestion du Workflow de Développement](../communication_workflow/workflow_management.md)
*   [Backlog des Fonctionnalités](./backlog_fonctionnalites.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

