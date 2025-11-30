---
statut: Brouillon
version: 2.0
auteur: Manus, Architecte de la Continuité et de la Performance (ACP)
date: 2025-11-30
tags: [TDD, fondations, conventions, légal, qualité, architecture]
---

# TDD-00 : Fondations et Conventions (Section 0)

## I. Objectif, Portée et Philosophie du TDD

Ce document établit le cadre formel du **Technical Design Document (TDD)** pour le projet GuildForge_Mobile. Il définit les conventions de documentation, les principes d'architecture et les aspects légaux qui régiront l'ensemble du développement technique.

Le TDD est le **Blueprint Technique** du projet, garantissant la **Clarté et Maintenabilité** (Principe 3) et servant de **Contrat de Pérennité** pour l'équipe de développement.

### I.1. Philosophie Architecturale : Data-Driven et Mobile-First

L'architecture technique doit adhérer à deux principes fondamentaux :

1.  **Data-Driven (Piloté par les Données) :** La logique de jeu doit être découplée des données de *design*. Le cœur du jeu est la gestion des `Def` (Définitions de jeu) via le **Pipeline XML -> CR Godot**.
2.  **Mobile-First (Performance Mobile) :** Chaque décision technique doit être évaluée sous l'angle de la performance sur Android (Principe 1). Cela inclut la gestion de la mémoire, le *threading* et la réduction des *draw calls*.

### I.2. Gestion des Risques Architecturaux

Le TDD est un outil de gestion des risques. Toute implémentation qui contrevient aux spécifications du TDD est considérée comme un **Risque Architectural Majeur** et doit être signalée.

## II. Conformité aux Conventions de Documentation

Tous les documents du TDD doivent se conformer strictement aux règles établies dans le document **Conventions Générales** (`docs/PMD/conventions_generales.md`).

| Règle de Conformité | Description Détaillée | Impact sur la Continuité |
| :--- | :--- | :--- |
| **YAML Front Matter** | Obligatoire pour chaque fichier TDD, incluant `statut`, `version`, `auteur`, `date`, et une liste de `tags` pertinents. | Assure la traçabilité, la recherche sémantique et la conformité au Workflow de Validation. |
| **Hiérarchie des Titres** | Utilisation stricte des titres de niveau 1 (`#`) pour le titre principal et des titres de niveau 2 (`##`) pour les sections principales (I, II, III, etc.). Les sous-sections doivent utiliser la numérotation romaine (I.1, I.2, etc.). | Maintient une structure claire, facilite la navigation et l'indexation automatique. |
| **Formatage du Texte** | Utilisation du **gras** pour les termes clés et des `backticks` pour les noms de fichiers, classes, variables ou fonctions. Les tableaux sont obligatoires pour synthétiser les spécifications. | Améliore la lisibilité, le scan rapide et l'uniformité du langage technique. |
| **Lisibilité Git** | Les lignes de texte ne doivent pas dépasser 80 caractères (sauf les liens et les tableaux). | Facilite la revue de code (diff) et la lisibilité Git (Règle 15). |

## III. Conventions de Codage et Qualité Logicielle

Les conventions de codage sont détaillées dans le document **Conventions Techniques** (`docs/PMD/conventions_techniques.md`). Le TDD doit en garantir l'application et l'enrichir de spécifications Godot.

| Domaine | Règle Impérative (Spécifique Godot) | Justification (Principe/Règle) |
| :--- | :--- | :--- |
| **Typage** | **Typage Statique Strict** obligatoire pour toutes les fonctions, arguments et variables publiques. Utilisation systématique des `export` et des `onready` pour la gestion des nœuds. | **Principe 8 (Typage Fort)** : Réduit les erreurs d'exécution et améliore la maintenabilité. |
| **Nommage** | **PascalCase** pour les classes/fichiers Godot (`.gd`, `.tscn`). **snake_case** pour les fonctions/variables. Les `Custom Resources` (CR) doivent être préfixées par `CR_`. | **Règle 18 (Conventions Générales)** : Assure la cohérence du code et l'identification immédiate des CR. |
| **Documentation** | Toutes les classes, fonctions et variables publiques doivent être documentées (Docstrings). Les commentaires doivent expliquer le **"pourquoi"** des décisions complexes. **Exigence :** Utilisation d'un format de Docstring standardisé (ex: JSDoc-like) pour la génération future de documentation API. | **Principe 3 (Clarté)** : Facilite l'onboarding et la maintenance à long terme. |
| **Tests** | Les composants critiques (DefManager, Pipeline de Conversion, Calculs de Combat) doivent être couverts par des tests unitaires automatisés. **Exigence :** Utilisation d'un framework de test Godot (ex: Gut) et intégration au CI/CD. | **Principe 9 (Contrôle Qualité)** : Assure la fiabilité des fondations du jeu. |

## IV. Aspects Légaux et Licences

Cette section formalise la gestion des licences et des dépendances pour éviter tout risque légal.

### IV.1. Licence du Projet

Le code source et la documentation du projet GuildForge_Mobile sont publiés sous la licence **[À DÉFINIR PAR L'UTILISATEUR]**.

*   **Action Requise :** L'utilisateur doit confirmer la licence (ex: MIT, GPL, Propriétaire).

### IV.2. Dépendances et Attribution

Toutes les dépendances externes (bibliothèques Godot, outils tiers, assets libres) doivent être listées ici avec leur licence respective.

| Dépendance | Type | Licence | Attribution Requise |
| :--- | :--- | :--- | :--- |
| **Godot Engine 4.x** | Moteur de Jeu | MIT | Non (sauf mention dans le jeu) |
| **[À Compléter]** | [Ex: Bibliothèque de Pathfinding] | [Ex: Apache 2.0] | [Oui/Non] |

### IV.3. Gestion des Données Source (XML RimWorld)

L'utilisation des 1942 fichiers XML d'origine de RimWorld comme **schéma de données fonctionnel** est une décision architecturale.



## V. Historique des Révisions

| Version | Date | Auteur | Description |
| :--- | :--- | :--- | :--- |
| 2.0 | 2025-11-30 | Manus (ACP) | Consolidation, amélioration et enrichissement de la section 0. Ajout de la philosophie architecturale et des exigences spécifiques Godot. |
| 1.0 | 2025-11-30 | Manus (ACP) | Création initiale du document de fondation. |
