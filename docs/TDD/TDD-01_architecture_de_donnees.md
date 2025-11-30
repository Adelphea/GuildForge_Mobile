---
statut: Finalisé
version: 1.2
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

## II. Le Pipeline XML -> Custom Resource (CR) Godot (P1-P10)

Le pipeline est le mécanisme qui transforme les données de *design* brutes (XML) en objets Godot utilisables (`Custom Resources`).

### II.1. Processus de Conversion

1.  **Source :** Fichiers XML (schémas fonctionnels inspirés de RimWorld).
2.  **Parsing XML :** Un script Python (`xml_to_cr_pipeline.py`) utilise la bibliothèque **`xmltodict`** pour convertir les fichiers XML complexes en structures de données Python (dictionnaires).
3.  **Résolution et Transformation :** Le script applique les 10 fonctionnalités critiques (détaillées en II.3) pour résoudre l'héritage, gérer les références, convertir les types et valider les données.
4.  **Sérialisation :** Les instances de CR sont sauvegardées au format `.tres` (texte) **pendant le développement** pour la lisibilité et le Version Control. Lors de l'exportation du jeu, Godot convertit automatiquement ces fichiers au format **`.res` (binaire)**, qui est optimisé pour la performance mobile.

### II.2. Spécification des Custom Resources (CR)

Toutes les `Def` doivent hériter d'une classe de base abstraite `CR_Base` (Règle 16, Conventions Techniques).

| Élément | Règle Impérative | Justification |
| :--- | :--- | :--- |
| **Héritage** | Toutes les CR doivent hériter de `CR_Base`. | Assure une interface commune pour le `DefManager`. |
| **Nommage** | Les classes CR doivent utiliser le préfixe `CR_` (Ex: `CR_ThingDef`). | Facilite l'identification et la recherche. |
| **Composition** | L'utilisation de la **Composition over Inheritance** est obligatoire. Les propriétés complexes doivent être des CR imbriquées, appelées **CompProperties** (Ex: `CR_ThingDef` contient une propriété `CR_CompProperties_StatBase`). | Assure la flexibilité et la réutilisation du code. Les `CompProperties` sont un sous-type des Données de Design. |
| **Validation** | Les CR doivent contenir des méthodes de validation interne (`_validate()`) pour vérifier la cohérence des données après chargement. | Contrôle Qualité (Principe 9). |

### II.3. Les 10 Fonctionnalités Critiques du Pipeline (P1-P10)

Le script `xml_to_cr_pipeline.py` implémente les 10 fonctionnalités suivantes, garantissant une conversion fidèle et optimisée des données XML vers le format Godot Custom Resource.

| ID | Fonctionnalité | Description | Implémentation dans le Pipeline |
| :--- | :--- | :--- | :--- |
| **P1** | **Résolution d'Héritage XML** | Résolution récursive de l'attribut `ParentName` pour fusionner les propriétés des Defs abstraits dans les Defs concrets. | Fonction `_resolve_inheritance()` |
| **P2** | **Sérialisation des Références Inter-Def** | Conversion des références XML (ex: `<thing>MyThingDef</thing>`) en références Godot `ExtResource` pointant vers le fichier `.tres` cible. | Fonction `_generate_tres_content()` |
| **P3** | **Gestion des Attributs `@Class`** | Conversion des balises `CompProperties` avec l'attribut `@Class` en `SubResource` Godot, assurant le lien vers la classe GDScript appropriée. | Fonction `_generate_tres_content()` |
| **P4** | **Gestion Récursive des Types Complexes** | Sérialisation des structures de données imbriquées (listes, dictionnaires) en structures Godot équivalentes (Array, Dictionary). | Fonction `_handle_complex_type()` |
| **P5** | **Pré-traitement des Opérations/Patchs XML** | Identification et ignorance des balises XML non pertinentes pour la conversion (ex: `PatchOperation_...`). | Fonction `_generate_tres_content()` |
| **P6** | **Mapping `defName` -> `class_name` GDScript** | Détermination dynamique du nom de la classe GDScript (`CR_DefType`) à partir du type de Def XML. | Fonction `run_pipeline()` |
| **P7** | **Conversion des Types de Données Brutes** | Conversion des chaînes de caractères représentant des types Godot (ex: "0.8, 0.9, 0.5" pour `Color` ou `Vector3`) en format Godot lisible. | Fonction `_convert_raw_data_type()` |
| **P8** | **Filtre de Chargement Conditionnel** | Identification des Defs avec des conditions de chargement (ex: `LoadIfModActive`) pour une gestion ultérieure par le `DefManager` en jeu. | Fonction `_load_all_defs()` |
| **P9** | **Initialisation des Valeurs par Défaut** | Assure que les propriétés non définies dans un Def concret héritent correctement de la valeur par défaut de son parent abstrait (couvert par P1). | Fonction `_resolve_inheritance()` |
| **P10** | **Validation et Optimisation Finale des Ressources** | Vérification de l'intégrité des Defs concrets (ex: présence de `defName` et `defType`) après résolution de l'héritage. | Fonction `_final_validation()` |

## III. Le DefManager (P3)

Le `DefManager` est le point d'accès unique et centralisé à toutes les données de *design* (Defs).

### III.1. Responsabilités

1.  **Chargement Asynchrone :** Charger tous les fichiers `.res` (ou `.tres` en mode debug) du répertoire `res://data/defs/` au démarrage du jeu, en utilisant **`ResourceLoader.load_threaded_request()`** pour un chargement asynchrone et optimisé qui ne bloque pas l'interface (Principe 1).
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

### IV.3. Spécification des Custom Resources (CR) pour Personnages

Les définitions de personnages doivent inclure des CR spécifiques pour les traits et les historiques, qui sont des données immuables.

| Élément | Règle Impérative | Justification |
| :--- | :--- | :--- |
| **CR_TraitDef** | Définit les traits de caractère (nom, description, effets sur les statistiques). | Permet l'ajout de nouveaux traits sans modifier le code. |
| **CR_BackstoryDef** | Définit les historiques (enfance, âge adulte) avec leurs impacts sur les compétences et les traits. | Assure la cohérence de la génération des colons. |

## V. Historique des Révisions

| Version | Date | Auteur | Description |
| :--- | :--- | :--- | :--- |
| 1.0 | 2025-11-30 | Manus (ACP) | Création du document spécifiant le pipeline XML->CR, le DefManager et la gestion de la sauvegarde. |
| 1.1 | 2025-11-30 | Manus (ACP) | Mise à jour de la spécification du pipeline pour inclure l'utilisation de la bibliothèque Python `xmltodict` pour le parsing XML. |
| **1.2** | **2025-11-30** | **Manus (ACP)** | **Finalisation de la spécification du pipeline XML->CR avec l'intégration des 10 fonctionnalités critiques (P1-P10).** |
