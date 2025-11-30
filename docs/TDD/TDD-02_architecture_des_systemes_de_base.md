---
statut: Brouillon
version: 1.0
auteur: Manus, Architecte de la Continuité et de la Performance (ACP)
date: 2025-11-30
tags: [TDD, architecture, godot, ecs, state-machine, ui]
---

# TDD-02 : Architecture des Systèmes de Base (Section II)

## I. Architecture Générale du Code et Patterns de Conception

Cette section spécifie les patterns de conception fondamentaux qui régiront l'implémentation du code, assurant la **Clarté et Maintenabilité** (Principe 3) et l'alignement avec les meilleures pratiques Godot.

### I.1. Modèle Entité-Composant-Système (ECS)

Le modèle ECS est adopté pour la gestion des entités de jeu (colons, objets, créatures).

| Élément ECS | Rôle | Implémentation Godot |
| :--- | :--- | :--- |
| **Entité** | Un identifiant unique (ID) et une collection de composants. | Un nœud Godot (`Node3D` ou `Node2D`) léger, servant de conteneur. |
| **Composant** | Données et état d'une fonctionnalité (Ex: `HealthComponent`, `InventoryComponent`). | Un nœud Godot (`Node`) enfant de l'Entité, contenant les données mutables. |
| **Système** | Logique de jeu qui opère sur les composants de toutes les entités pertinentes. | Un nœud Godot (`Node`) singleton ou un script global qui itère sur les Entités. |

### I.2. Gestion d'État (State Machine)

Le pattern **State Machine** est obligatoire pour la gestion des comportements complexes et des cycles de vie.

*   **Comportements des Colons :** Utilisation de State Machines hiérarchiques (Ex: `ColonState` -> `WorkingState` -> `MiningState`).
*   **Implémentation :** Les State Machines doivent être implémentées via des classes GDScript dédiées, découplées du nœud principal.

### I.3. Communication Inter-Systèmes (Signals)

La communication entre les systèmes et les composants doit se faire principalement via les **Signals** de Godot.

*   **Règle :** Les systèmes ne doivent pas appeler directement les méthodes des autres systèmes. Ils doivent émettre des `Signals` que les systèmes intéressés peuvent écouter.
*   **Avantage :** Assure un couplage faible et une meilleure extensibilité.

## II. Structure de l'Arborescence Fonctionnelle (Scene Tree)

L'arborescence de scène (Scene Tree) doit être organisée de manière logique pour faciliter le débogage et la gestion des ressources.

### II.1. Nœuds Racines (Singletons)

Les systèmes globaux doivent être implémentés comme des **Singletons** (AutoLoad) pour un accès facile et centralisé.

| Singleton | Rôle | Alignement TDD-01 |
| :--- | :--- | :--- |
| `DefManager` | Gestion centralisée des Données de Design (Defs). | Section I.III |
| `GameManager` | Gestion de l'état global du jeu (Pause, Vitesse, Sauvegarde/Chargement). | Section I.IV |
| `InputManager` | Gestion des entrées utilisateur (clic, zoom, scroll). | Section II.III |

### II.2. Organisation des Scènes de Jeu

L'arborescence de jeu doit suivre une structure claire :

```
/root
  - GameManager (Singleton)
  - DefManager (Singleton)
  - World (Node2D/3D)
    - Map (TileMap/Grid)
    - Entities (Node)
      - Colon_1 (Entité)
        - HealthComponent (Composant)
        - AIComponent (Composant)
      - Object_1 (Entité)
    - Systems (Node)
      - AISystem (Système)
      - PathfindingSystem (Système)
```

## III. Architecture de l'Interface Utilisateur (UI)

L'UI doit être conçue pour la performance et l'adaptabilité mobile.

### III.1. Principes de Conception UI

*   **Adaptabilité Mobile :** Utilisation des conteneurs Godot (`Container` nodes) pour garantir l'affichage correct sur différentes résolutions d'écran Android.
*   **Découplage :** L'UI ne doit pas contenir de logique de jeu. Elle doit uniquement afficher les données fournies par les systèmes et émettre des `Signals` pour les actions utilisateur.

### III.2. Gestion des Écrans (Screen Manager)

Un `ScreenManager` (Singleton) doit gérer l'affichage et la transition entre les différents écrans de l'UI (Menu Principal, Écran de Jeu, Inventaire).

*   **Avantage :** Permet de décharger les scènes d'UI non utilisées pour optimiser la mémoire (Principe 1).

## IV. Historique des Révisions

| Version | Date | Auteur | Description |
| :--- | :--- | :--- | :--- |
| 1.0 | 2025-11-30 | Manus (ACP) | Création du document spécifiant l'architecture ECS, la gestion d'état, la communication par Signals et la structure de l'arborescence. |
