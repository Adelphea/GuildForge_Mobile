---
Statut: Brouillon
---

# Conception Axée sur les Données - GuildForge

**Auteur :** Adelphea ; Manus IA
**Date :** 18 octobre 2025
**Version :** 1
**Tags :** [game-design, technique, données, RimWorld, Godot]

## 1. Introduction

Ce document détaille comment les informations extraites de l'analyse des fichiers XML de RimWorld seront utilisées pour informer, enrichir et équilibrer les mécaniques de jeu de GuildForge, **en les adaptant rigoureusement à notre univers strictement médiéval et sans éléments fantastiques.** L'objectif est de capitaliser sur la richesse des données existantes pour créer un système de jeu robuste et cohérent, tout en reconnaissant que les fichiers XML sont des **sources d'inspiration et de référence conceptuelle**, et non des données à migrer directement, sauf si explicitement planifié.

## 2. Utilisation des Données XML pour le Game Design

L'analyse des schémas et des relations entre les différentes définitions (Defs) XML de RimWorld fournit une base solide pour la conception de GuildForge. Ces informations seront utilisées pour :

*   **Assurer la cohérence :** Maintenir une logique interne entre les objets, les actions et les effets du jeu.
*   **Accélérer le développement :** Utiliser les structures existantes comme point de départ pour la création de nouvelles définitions.
*   **Faciliter l'équilibrage :** Comprendre les interdépendances pour ajuster les valeurs de jeu de manière informée.

### 2.1. Migration et Structuration des Données

Conformément aux principes de gestion des données du projet, les anciennes données au format XML doivent être converties en resources Godot. L'analyse des `def_schemas` (schémas de définition) est cruciale pour cette étape. Ces schémas, tels que `ThingDef_schema.mmd`, `RecipeDef_schema.mmd`, et `HediffDef_schema.mmd`, serviront de base pour la création des scripts GDScript correspondants qui définiront la structure des `Types` Godot. La création des `Types` Godot est inspirée des `Defs` XML et se réfère à la même logique, adaptée pour Godot.

**Exemple :** Un `ThingDef` XML décrivant un objet sera transformé en une `ItemDefinition` resource en GDScript, avec des champs correspondant aux propriétés identifiées dans le schéma XML.

### 2.2. Enrichissement des Mécaniques de Jeu

Les relations entre les Defs XML, identifiées lors de l'analyse, sont une source précieuse pour la conception des mécaniques de jeu.

#### 2.2.1. Système d'Artisanat et de Production

L'analyse des `RecipeDef` et de leurs dépendances (`ThingDef` pour les ingrédients et les produits, `WorkTypeDef` pour les compétences requises) permettra de concevoir un système d'artisanat détaillé et équilibré. Les `WorkGiverDef` peuvent également inspirer la création de tâches spécifiques pour les colons.

**Tableau 1 : Exemple d'Adaptation de RecipeDef**

| Élément XML (RimWorld) | Description | `Resource` Godot équivalente |
| :--------------------- | :---------- | :----------------------------- |
| `RecipeDef`            | Définit une recette d'artisanat. | `CraftingRecipeResource` (resource Godot étendue ou script `Resource`)  |
| `ingredients`          | Liste des matériaux requis. | `Array<ItemDefinition>` pour les ingrédients |
| `products`             | Objets produits. | `ItemDefinition` pour le produit final |
| `workAmount`           | Temps de travail nécessaire. | `crafting_time` (nombre) |
| `workSkill`            | Compétence requise. | `required_skill` (énumération ou string) |

**Exemples concrets de RecipeDef :**

L'analyse des fichiers XML a révélé une grande variété de `RecipeDef`, chacun décrivant des processus d'artisanat spécifiques. Voici quelques exemples représentatifs :

*   **`Make_Pemmican` :** Une recette de base pour la nourriture de survie, nécessitant de la viande et des baies, avec un temps de travail modéré. Elle est souvent associée à la compétence de cuisine.
*   **`Make_Component` :** Une recette de fabrication de composants complexes (ex: engrenages de moulin, mécanismes d'horlogerie rudimentaire), nécessitant des métaux et un niveau de compétence en artisanat plus élevé. Elle illustre la progression des savoir-faire techniques médiévaux.
*   **`Craft_FlakVest` :** Une recette d'armure, demandant des matériaux spécifiques comme le plasteel et un connaissances en couture ou en fabrication d'armures. Elle met en évidence l'importance des matériaux rares et des compétences spécialisées.
*   **`InstallPegLeg` :** Une recette médicale pour installer une jambe de bois, nécessitant une jambe de bois et une compétence médicale. Cet exemple montre comment les `RecipeDef` peuvent s'étendre aux opérations chirurgicales et aux soins des colons.

Ces exemples démontrent la flexibilité des `RecipeDef` pour couvrir un large éventail d'activités de production et d'artisanat, depuis la préparation de nourriture jusqu'à la fabrication d'équipements complexes et les interventions médicales. Chaque `RecipeDef` inclut des détails sur les ingrédients (`ingredients`), les produits (`products`), le temps de travail (`workAmount`), les compétences requises (`workSkill`), et parfois des prérequis de recherche (`researchPrerequisite`).

#### 2.2.2. Système de Santé et de Blessures

Les `HediffDef` (définitions d'effets de santé) et leurs relations avec les `BodyPartDef` (parties du corps) et les `DamageDef` (types de dégâts) sont fondamentaux pour un système de santé réaliste. L'analyse de ces Defs permettra de créer un système de blessures, de maladies et de soins médicaux cohérent.

#### 2.2.3. Économie et Commerce

#### 2.2.4. Gestion des Colons

Les `TraitType` et `BackstoryType` sont fondamentaux pour la création et la gestion des colons. Leurs structures, analysées à partir des fichiers XML, guideront la création de Resources Godot pour les traits, les historiques, les compétences et les besoins des colons. Pour une compréhension détaillée de ces systèmes, veuillez consulter les documents :

*   [Création et Personnalisation des Colons](../game_design/03_systeme_personnages/01_creation_et_historique.md)
*   [Cycle de Vie des Colons](../game_design/03_systeme_personnages/01_creation_et_historique.md)
*   [Gestion des Besoins des Colons](../game_design/03_systeme_personnages/03_besoins_et_humeur.md)

### 2.3. Génération de Contenu et de Lore

Les données XML contiennent également des éléments qui peuvent inspirer le contenu et le lore du jeu.

*   **`BackstoryTranslations` :** Peuvent être utilisées pour générer des histoires de fond pour les colons, enrichissant leur personnalité et leurs interactions.
*   **Descriptions de `ThingDef` :** Les descriptions détaillées des objets peuvent inspirer des éléments de lore ou des quêtes secondaires.

## 3. Intégration dans le Workflow de Développement

Les informations issues de cette analyse seront intégrées à chaque étape du développement :

*   **Conception :** Les designers utiliseront ces données pour affiner les mécaniques et le contenu.
*   **Développement :** Les développeurs s'appuieront sur les schémas pour implémenter les `resources` et les systèmes de jeu.
*   **Tests et Équilibrage :** Les testeurs et les équilibreurs utiliseront les relations entre les Defs pour valider la cohérence et l'équilibre du jeu.

## 4. Références

*   [GDD Maître](../README.md)
*   [Rapport Sommaire Initial des Structures XML](./data_definitions_xml_originaux.md)
*   [Schémas de Définition Résolus](../archives/data_definitions_xml_originaux.md)
*   [Standardisation des Données pour Godot](gestion_donnees_godot.md)

