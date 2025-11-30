---
statut: Brouillon
version: 1.0
auteur: Manus, Architecte de la Continuité et de la Performance (ACP)
date: 2025-11-30
tags: [TDD, performance, mobile, ci/cd, modding, extensibilite]
---

# TDD-05 : Opérations, Performance et Extensibilité (Section V)

## I. Performance et Optimisation Mobile

Cette section formalise les stratégies techniques pour garantir la **Performance Mobile** (Principe 1) et éviter les problèmes de latence et de consommation de ressources.

### I.1. Threading et Asynchronisme

*   **Exigence :** Toutes les opérations lourdes (I/O, calculs complexes) doivent être exécutées sur des threads séparés pour ne pas bloquer le thread principal (UI/Gameplay).
*   **Tâches Asynchrones Obligatoires :**
    1.  **Chargement des Données :** Le `DefManager` doit charger les `CR` de manière asynchrone au démarrage.
    2.  **Pathfinding Long :** Les calculs de Pathfinding dépassant un seuil de complexité (Ex: 500 tuiles) doivent être délégués à un thread.
    3.  **Sauvegarde/Chargement :** Les opérations de sérialisation/désérialisation des sauvegardes doivent être asynchrones.
*   **Implémentation :** Utilisation des `Thread` Godot ou de l'API `Callable.call_deferred()` pour les opérations légères.

### I.2. Optimisation du Rendu (Draw Calls)

*   **Exigence :** Minimiser le nombre de *Draw Calls* pour la performance GPU mobile.
*   **Stratégies :**
    1.  **Texture Atlas :** Utilisation obligatoire d'un *Texture Atlas* pour les tuiles et les sprites des Entités.
    2.  **Batching :** S'assurer que le moteur Godot peut effectuer le *batching* automatique des éléments statiques (TileMap).
    3.  **Culling :** Utilisation du *Frustum Culling* et de l'occlusion pour ne rendre que les éléments visibles.

## II. Qualité Logicielle et CI/CD

### II.1. Stratégie de Tests

*   **Tests Unitaires :** Obligatoires pour tous les systèmes critiques (DefManager, Pipeline XML -> CR, HealthSystem, CombatSystem).
*   **Tests d'Intégration :** Obligatoires pour vérifier la communication entre les systèmes (Ex: Un colon reçoit un dégât et l'Hediff est correctement appliqué).
*   **Outil :** Utilisation du framework de tests intégré à Godot (GDUnit ou équivalent).

### II.2. Intégration et Déploiement Continus (CI/CD)

*   **Exigence :** Automatiser la vérification de la qualité et le déploiement.
*   **Pipeline CI :**
    1.  Vérification de la syntaxe et du typage (GDScript Linter).
    2.  Exécution des Tests Unitaires et d'Intégration.
    3.  Génération automatisée de la documentation technique (Docstrings).
*   **Pipeline CD :** Automatisation du *Build* Android (APK) pour les versions de test.

## III. Extensibilité et Modding

### III.1. Architecture de Modding

*   **Exigence :** Le jeu doit être moddable au niveau des données (XML/CR) et du code (GDScript).
*   **API de Modding (Données) :** Le `DefManager` doit permettre le chargement de `CR` provenant de répertoires de mods externes.
*   **API de Modding (Code) :** Les mods doivent pouvoir injecter des `Component` et des `System` dans l'architecture ECS sans modifier le code source du jeu.

### III.2. Outils de Développement

*   **Exigence :** Fournir des outils pour faciliter le développement et le modding.
*   **Outils Obligatoires :**
    1.  **Console de Débogage :** Pour l'exécution de commandes en jeu et l'affichage des logs.
    2.  **Inspecteur de Defs :** Un outil UI pour visualiser les `CR` chargées en mémoire.
    3.  **Visualiseur de Behavior Tree :** Pour le débogage de l'AI des colons.

## IV. Historique des Révisions

| Version | Date | Auteur | Description |
| :--- | :--- | :--- | :--- |
| 1.0 | 2025-11-30 | Manus (ACP) | Création du document spécifiant les stratégies de performance mobile, la qualité logicielle (Tests/CI) et l'architecture de modding. |
