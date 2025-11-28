# Stratégies de Tests pour GuildForge Mobile

**Auteur :** Manus AI
**Date :** 11 Octobre 2025
**Version :** 1.0
**Tags :** [documentation, technique, tests, qualite, godot, mobile]

Ce document décrit les stratégies de test adoptées pour le projet GuildForge Mobile, en tenant compte des contraintes de développement (projet solo, sans budget, sur appareil mobile). Il présente les objectifs, la philosophie, les types de tests, le processus et les outils utilisés pour garantir la qualité et la stabilité du jeu.

---

## 1. Introduction aux Tests

### 1.1. Objectifs des Tests

Les tests pour GuildForge Mobile visent à garantir la **stabilité générale du jeu**, la **performance optimale sur mobile**, la **logique et la cohérence des mécaniques de jeu**, l'**absence de bugs bloquants**, et l'**équilibre du gameplay**. L'objectif est d'offrir une expérience utilisateur fluide et agréable, exempte de défauts majeurs qui pourraient nuire à l'immersion ou à la jouabilité.

### 1.2. Philosophie de Test du Projet

Compte tenu des contraintes de ressources (développement sans budget, sur un appareil mobile unique), la philosophie de test repose sur une approche pragmatique et ciblée. Le développeur unique est le principal acteur des tests, en se concentrant sur les fonctionnalités critiques et en utilisant des outils légers et gratuits.

## 2. Types de Tests

### 2.1. Tests Unitaires

Les tests unitaires se concentrent sur la vérification de petites unités de code isolées (fonctions, méthodes, classes). Pour Godot, il est possible d'utiliser des frameworks de test légers comme [GDUnit3](https://github.com/MikeSchulze/gdUnit3) ou de créer des scènes de test dédiées pour exécuter des scripts spécifiques.

### 2.2. Tests d'Intégration

Ces tests vérifient que différentes unités de code fonctionnent correctement ensemble. Dans Godot, cela peut impliquer de tester l'interaction entre plusieurs nœuds, scènes ou systèmes (par exemple, l'interaction entre l'inventaire et le système de craft).

### 2.3. Tests Fonctionnels

Les tests fonctionnels valident que les fonctionnalités du jeu répondent aux spécifications. Ils sont souvent réalisés manuellement par le développeur, en jouant au jeu et en vérifiant chaque mécanique (ex: la construction d'un bâtiment, la gestion des colons, le système de combat).

### 2.4. Tests Alpha/Bêta (Tests par le développeur)

Étant donné que le développeur est le seul testeur, ces phases consistent en des sessions de jeu intensives et structurées, où le développeur endosse le rôle de l'utilisateur final pour identifier les problèmes d'expérience, les bugs et les déséquilibres. L'accent est mis sur la rejouabilité et la détection des régressions.

## 3. Processus de Test

### 3.1. Cycle de Vie d'un Test

Le cycle de vie d'un test, dans ce contexte de développement solo, est itératif : développement d'une fonctionnalité -> test manuel par le développeur -> identification des bugs -> correction -> re-test. Pour les tests unitaires/d'intégration automatisés, le cycle est intégré au processus de développement.

### 3.2. Environnements de Test

L'environnement de test principal est l'appareil mobile cible (Samsung Galaxy A54 5G) lui-même, garantissant que les tests sont effectués dans les conditions réelles d'utilisation. Des tests peuvent également être effectués dans l'éditeur Godot pour des vérifications rapides.

### 3.3. Rapport de Bugs et Suivi

Pour le rapport et le suivi des bugs, une solution simple et efficace est recommandée. Un fichier Markdown dédié (`bugs.md`) ou un tableur simple (Google Sheets, LibreOffice Calc) peut être utilisé pour lister les bugs, leur priorité, leur statut et les étapes de reproduction. Chaque entrée devrait inclure :

*   **ID du Bug :** (Ex: BUG-001)
*   **Description :** Description claire du problème.
*   **Étapes de reproduction :** Comment reproduire le bug.
*   **Comportement attendu :** Ce qui devrait se passer.
*   **Comportement observé :** Ce qui se passe réellement.
*   **Priorité :** (Ex: Critique, Majeure, Mineure, Cosmétique)
*   **Statut :** (Ex: Ouvert, En cours, Résolu, Fermé)
*   **Date de découverte :**
*   **Date de résolution :**

## 4. Outils et Méthodologies

### 4.1. Outils de Test Utilisés

*   **GDUnit3 :** Un framework de test unitaire pour Godot Engine, permettant d'écrire des tests automatisés pour le code GDScript.
*   **Godot Editor :** Pour les tests fonctionnels et d'intégration manuels, en exécutant des scènes spécifiques ou le jeu complet.
*   **Fichier Markdown ou Tableur :** Pour le suivi des bugs, comme décrit ci-dessus.

### 4.2. Méthodologies

Une approche de **Test Exploratoire** est privilégiée, où le développeur explore le jeu pour découvrir des bugs et des problèmes d'expérience utilisateur, complétée par des **Tests de Régression** pour s'assurer que les nouvelles modifications n'introduisent pas de nouveaux problèmes dans les fonctionnalités existantes.

## 5. Directives de Qualité

### 5.1. Critères d'Acceptation

Chaque fonctionnalité doit être considérée comme terminée et fonctionnelle seulement après avoir passé les tests manuels et, si applicable, les tests unitaires automatisés. Les bugs critiques et majeurs doivent être résolus avant chaque nouvelle version.

### 5.2. Couverture de Code

Bien qu'une couverture de code formelle puisse être difficile à maintenir dans un projet solo sans budget, l'objectif est de s'assurer que les parties les plus complexes et critiques du code sont couvertes par des tests unitaires, et que toutes les fonctionnalités sont testées manuellement de manière approfondie.

## 6. Références

*   [Guide de Profilage Mobile](../optimisation_performance/strategies_optimisation_performance.md)

