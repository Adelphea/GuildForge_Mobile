---
statut: Brouillon
version: 1.0
auteur: Manus, Architecte de la Continuité et de la Performance (ACP)
date: 2025-11-30
tags: [TDD, architecture, data-driven, defs, pipeline, custom-resources]
---

# TDD-01 : Architecture de Données (Section I)

## I. Philosophie et Modèle de Données

Cette section spécifie l'architecture de données du projet, qui est le cœur du modèle **Data-Driven**. L'objectif est de garantir que les données de *design* sont **immuables**, **centralisées** et **facilement modifiables** via le pipeline.

### I.1. Séparation des Données : Design vs. Sauvegarde

Une distinction stricte est faite entre les données de *design* (Définitions de jeu) et les données de *sauvegarde* (État de la partie).

| Type de Données | Description | Format de Stockage | Immuabilité |
| :--- | :--- | :--- | :--- |
| **Données de Design (Defs)** | Définitions de tous les objets, personnages, recettes, etc. (Ex: `ThingDef`, `RecipeDef`). Inclut les `CompProperties`. | **Custom Resources (CR)** Godot (`.tres`) générées par le pipeline. | **Immuable** (Chargées une seule fois au démarrage). |
| **Données de Sauvegarde** | État dynamique de la partie (position des objets, santé des colons, progression). | Format sérialisé (JSON ou YAML) géré par le système de sauvegarde. | **Mutable** (Mises à jour constantes). |

## II. Le Pipeline XML -> Custom Resource (CR) Godot (P2)

Le pipeline est le mécanisme qui transforme les données de *design* brutes (XML) en objets Godot utilisables (`Custom Resources`).

### II.1. Processus de Conversion

1.  **Source :** Fichiers XML (schémas fonctionnels inspirés de RimWorld).
2.  **Validation XML :** Un script Python/GDScript vérifie la conformité des fichiers XML à un schéma XSD/JSON Schema prédéfini.
3.  **Conversion :** Le script lit le XML et instancie les classes GDScript héritant de `Resource` (les `Custom Resources`).
4.| **Sérialisation :** Les instances de CR sont sauvegardées au format `.tres` (texte) dans le répertoire `res://data/defs/`. Le fichier `.tres` est le **format de sérialisation** des Données de Design, et non un type de donnée distinct.

### II.2. Spécification des Custom Resources (CR)

Toutes les `Def` doivent hériter d'une classe de base abstraite `CR_Base` (Règle 16, Conventions Techniques).

| Élément | Règle Impérative | Justification |
| :--- | :--- | :--- |
| **Héritage** | Toutes les CR doivent hériter de `CR_Base`. | Assure une interface commune pour le `DefManager`. |
| **Nommage** | Les classes CR doivent utiliser le préfixe `CR_` (Ex: `CR_ThingDef`). | Facilite l'identification et la recherche. |
| **Composition** | L'utilisation de la **Composition over Inheritance** est obligatoire. Les propriétés complexes doivent être des CR imbriquées, appelées **CompProperties** (Ex: `CR_ThingDef` contient une propriété `CR_CompProperties_StatBase`). | Assure la flexibilité et la réutilisation du code. Les `CompProperties` sont un sous-type des Données de Design. |
| **Validation** | Les CR doivent contenir des méthodes de validation interne (`_validate()`) pour vérifier la cohérence des données après chargement. | Contrôle Qualité (Principe 9). |

## III. Le DefManager (P3)

Le `DefManager` est le point d'accès unique et centralisé à toutes les données de *design* (Defs).

### III.1. Responsabilités

1.  **Chargement Asynchrone :** Charger tous les fichiers `.tres` du répertoire `res://data/defs/` au démarrage du jeu, en utilisant le *threading* pour ne pas bloquer l'interface (Principe 1).
2.  **Validation d'Intégrité :** Exécuter les méthodes de validation interne des CR après chargement.
3.  **Accès Global :** Fournir une API statique pour l'accès aux Defs par identifiant unique (`get_def_by_id(id: String) -> CR_Base`).

### III.2. API d'Accès (Exemple)

```gdscript
# DefManager.gd (Singleton)

# Retourne une Def par son ID.
static func get_def_by_id(id: String) -> CR_Base:
    # ... implémentation ...
    pass

# Retourne toutes les Defs d'un certain type.
static func get_all_defs_of_type(type: String) -> Array[CR_Base]:
    # ... implémentation ...
    pass
```

## IV. Gestion de la Sauvegarde et de la Rétro-Compatibilité

Cette section détaille la gestion des données mutables (état de la partie).

### IV.1. Mécanisme de Sauvegarde

*   **Format :** Les données de sauvegarde seront sérialisées au format **JSON** (pour la lisibilité et la performance mobile) ou **YAML** (pour la flexibilité).
*   **Processus :** Seules les données mutables (variables d'état) sont sérialisées. Les références aux Defs sont stockées par leur ID (`String`) pour éviter la sérialisation des données immuables.

### IV.2. Rétro-Compatibilité des Données (Règle 22)

*   **Versionnage :** Chaque fichier de sauvegarde doit inclure un numéro de version du jeu.
*   **Migration :** Le système de chargement doit inclure un mécanisme de migration (`SaveMigrator`) pour mettre à jour les anciennes versions de sauvegarde vers la version actuelle.

## V. Historique des Révisions

| Version | Date | Auteur | Description |
| :--- | :--- | :--- | :--- |
| 1.0 | 2025-11-30 | Manus (ACP) | Création du document spécifiant le pipeline XML->CR, le DefManager et la gestion de la sauvegarde. |
