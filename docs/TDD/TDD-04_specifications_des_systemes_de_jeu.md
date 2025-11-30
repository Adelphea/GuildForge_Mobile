---
statut: Brouillon
version: 1.0
auteur: Manus, Architecte de la Continuité et de la Performance (ACP)
date: 2025-11-30
tags: [TDD, systemes, gameplay, ia, combat, gdd]
---

# TDD-04 : Spécifications des Systèmes de Jeu (Section IV)

## I. Alignement GDD et Dépendances

Cette section traduit les systèmes de jeu complexes définis dans le **Game Design Document (GDD)** en spécifications techniques. Chaque système doit s'appuyer sur l'**Architecture de Données (Section I)** et l'**Architecture des Systèmes de Base (Section II)**.

### I.1. Matrice d'Alignement

| Système GDD | Section GDD | Dépendances TDD |
| :--- | :--- | :--- |
| **Monde et Génération** | GDD 01 | TDD-01 (Defs de Tuiles), TDD-02 (ECS, Signals) |
| **Conteur IA** | GDD 02 | TDD-01 (Defs d'Événements), TDD-02 (State Machine, Singletons) |
| **Personnages** | GDD 03 | TDD-01 (Defs de Colons, CompProperties), TDD-02 (ECS, State Machine) |
| **Combat** | GDD 08 | TDD-01 (Defs d'Armes/Dégâts), TDD-02 (ECS, Signals) |

## II. Système de Monde et Pathfinding

### II.1. Représentation du Monde (Carte de Colonie)

*   **Grille de Jeu (Colonie) :** La carte de colonie (où se déroule le gameplay) sera représentée par une grille 2D (TileMap Godot) pour la gestion des tuiles, des obstacles et des zones. La taille maximale recommandée est de 400x400 pour des raisons de performance mobile.
*   **Données de Tuile :** Chaque tuile doit pouvoir stocker des données mutables (Ex: présence de neige, niveau de saleté) via un composant de données de tuile.

### II.2. Algorithme de Pathfinding (Colonie)

*   **Exigence :** Le Pathfinding doit être rapide et non bloquant pour le thread principal (Principe 1).
*   **Spécification :** Utilisation d'un algorithme **A*** ou **JPS** (Jump Point Search) optimisé pour les grilles 2D. Le calcul des chemins longs doit être effectué sur un **thread séparé** (cf. TDD-05).
*   **Implémentation :** Le système de Pathfinding doit être un **Système ECS** qui met à jour les composants de position des Entités.

### II.3. Carte du Monde (Polyèdre de Goldberg)

*   **Rôle :** La carte du monde est une représentation stratégique et non jouable de la planète, utilisée pour la sélection de site et le voyage.
*   **Topologie :** La structure de la **Polyèdre de Goldberg** sera utilisée pour la génération des biomes et des tuiles de la carte du monde, mais sera affichée comme une carte 2D projetée.
*   **Dépendance :** Le Pathfinding sur la carte du monde est simplifié (déplacement de tuile à tuile) et ne doit pas utiliser le système de Pathfinding de la colonie.

## III. Système de Conteur IA (Storyteller)

Le Conteur IA est le système qui gère la difficulté et le flux narratif du jeu.

### III.1. Architecture du Conteur

*   **Implémentation :** Le Conteur doit être un **Singleton** (pour un accès global) et un **Système ECS** (pour itérer sur les Entités et déclencher des événements).
*   **Mécanisme de Pondération :** Le Conteur doit utiliser un système de pondération basé sur les variables de jeu (richesse de la colonie, nombre de colons, temps de jeu) pour sélectionner les événements à déclencher.

### III.2. Déclenchement d'Événements

*   **Définition :** Les événements sont définis par des `CR_EventDef` (TDD-01).
*   **Logique :** Le Conteur émet un `Signal` global (`event_triggered(event_def_id: String)`) que les systèmes de jeu écoutent pour appliquer les effets.

## IV. Système de Personnages et d'AI

### IV.1. Structure de l'Entité Colon

L'Entité Colon doit être une composition des composants suivants (liste non exhaustive) :

*   `HealthComponent` (Données mutables de santé, blessures)
*   `NeedsComponent` (Faim, Sommeil, Joie)
*   `AIComponent` (Référence à la State Machine de comportement)
*   `InventoryComponent` (Gestion des objets portés)

### IV.2. AI de Comportement

*   **Exigence :** L'AI doit être modulaire et facile à étendre.
*   **Spécification :** Utilisation de **Behavior Trees** (Arbres de Comportement) pour la prise de décision des colons. Chaque tâche (Miner, Cuisiner, Combattre) est un nœud de l'arbre.

## V. Système de Santé et de Blessures (Hediffs)

### V.4. Spécification des Dégâts et des Parties du Corps

*   **Types de Dégâts :** Les types de dégâts (Tranchant, Contondant, Perforant, Brûlure) doivent être définis par des `CR_DamageDef` (TDD-01).
*   **Localisation :** Le système doit gérer la localisation des dégâts sur les parties du corps définies par `CR_BodyPartDef` (TDD-01).

## VII. Système de Tâches et de Priorités

### VII.1. Logique de Tâches

*   **Implémentation :** Les ordres de construction/travail sont des `TaskComponent` ajoutés à un `TaskManager` (Singleton).
*   **Priorité :** Le système doit gérer une échelle de priorité des tâches (Priorité 1 à 4) pour la prise de décision de l'AI des colons.

## VIII. Système de Construction et de Zones

Ce système est critique pour la survie et la gestion des personnages. Il est basé sur le concept de **Hediffs** (Health Differences) de RimWorld.

### V.1. Architecture du Système

*   **Composant (Entité) :** Chaque Entité (Colon, Animal) doit posséder un `HealthComponent` (mutable) qui contient :
    *   Une liste des `BodyPartComponent` (pour la localisation des dégâts).
    *   Une liste des `HediffComponent` (pour les blessures, maladies, conditions chroniques).
*   **Système (Singleton) :** Un `HealthSystem` (Singleton ECS) est responsable de :
    *   Le calcul des dégâts localisés.
    *   La progression des `Hediffs` (maladies, saignements).
    *   L'application des traitements médicaux.

### V.2. Spécification des Données (TDD-01)

*   **CR_BodyPartDef :** Définit les parties du corps (nom, points de vie de base, vulnérabilité, relation parent/enfant).
*   **CR_HediffDef :** Définit les conditions (blessure, maladie, cicatrice) avec :
    *   Le type de dégât (tranchant, contondant, brûlure).
    *   Les effets sur les statistiques (vitesse, conscience, travail).
    *   La progression (taux de guérison, risque d'infection).

### V.3. Mécanisme de Dégâts et de Progression

1.  **Dégât :** Un `Signal` de dégât est émis (`damage_applied(target: Entity, damage_def: CR_DamageDef, amount: float)`).
2.  **Localisation :** Le `HealthSystem` détermine la partie du corps touchée (basé sur la `CR_DamageDef` et la vulnérabilité de la `CR_BodyPartDef`).
3.  **Application Hediff :** Le `HealthSystem` crée un `HediffComponent` (Ex: `Coupure Profonde`) et l'ajoute au `HealthComponent` de l'Entité.
4.  **Progression :** Le `HealthSystem` itère sur tous les `HediffComponent` à chaque tick pour appliquer la progression (Ex: augmenter le saignement, faire progresser la maladie).

## VI. Système de Construction et de Zones

### VI.1. Structures et Mobilier

*   **Implémentation :** Les structures et le mobilier sont des Entités avec des `Component` spécifiques (Ex: `BuildComponent`, `StorageComponent`).
*   **Dépendance :** Leurs propriétés sont définies par des `CR_BuildingDef` (TDD-01).

### VI.2. Zones et Ordres

*   **Implémentation :** Les zones (Stockage, Culture) sont gérées par un `ZoneManager` (Singleton) qui stocke des données sur la grille de tuiles (TDD-04, II.1).
*   **Ordres :** Les ordres de construction/travail sont des `TaskComponent` ajoutés à un `TaskManager` (Singleton).

### VI.3. Température et Confort

*   **Implémentation :** Un `TemperatureSystem` (Singleton) calcule la propagation de la chaleur/froid sur la grille de tuiles.
*   **Dépendance :** Les Entités (Colons) lisent la température de leur tuile pour ajuster leur `NeedsComponent` (TDD-02).

## VII. Historique des Révisions

*   **Exigence :** L'AI doit être modulaire et facile à étendre.
*   **Spécification :** Utilisation de **Behavior Trees** (Arbres de Comportement) pour la prise de décision des colons. Chaque tâche (Miner, Cuisiner, Combattre) est un nœud de l'arbre.

## V. Historique des Révisions

| Version | Date | Auteur | Description |
| :--- | :--- | :--- | :--- |
| 1.0 | 2025-11-30 | Manus (ACP) | Création du document spécifiant la traduction des systèmes GDD en spécifications techniques (Pathfinding, Conteur IA, AI de Personnages). |
| 1.1 | 2025-11-30 | Manus (ACP) | Correction de l'incohérence Monde/TileMap (Goldberg vs. Colonie). Ajout des spécifications détaillées pour les Systèmes de Santé (Hediffs) et de Construction/Zones. |
