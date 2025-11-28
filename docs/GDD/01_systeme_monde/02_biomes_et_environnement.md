# Biomes et Environnement - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.1
**Tags :** [game-design, monde, biomes, environnement, climat, faune, flore, BiomeDef, optimisation]

Ce document détaille les différents biomes présents dans le monde de GuildForge Mobile, leurs caractéristiques (climat, végétation, faune spécifique) et leur impact sur la colonie. Il s'appuie sur la structure des `BiomeDef` pour définir des environnements de jeu variés et stimulants, offrant au joueur la possibilité de personnaliser son expérience.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Caractéristiques des Biomes (BiomeDef)](#2-caractéristiques-des-biomes-biomedef)
    *   [Types de Biomes](#types-de-biomes)
    *   [Caractéristiques Spécifiques](#caractéristiques-spécifiques)
3.  [Sélection de Biomes et Exclusion](#3-sélection-de-biomes-et-exclusion)
4.  [Références](#4-références)

---

## 1. Introduction

Les biomes sont des régions distinctes du monde, chacune avec son propre ensemble de caractéristiques environnementales, de ressources, de faune et de flore. Ils constituent un élément clé de la rejouabilité et de la stratégie de survie dans GuildForge Mobile. Le joueur peut choisir d'inclure ou d'exclure certains biomes lors de la création de la partie pour personnaliser son expérience.

## 2. Caractéristiques des Biomes (BiomeDef)

Les `BiomeDef` définissent les caractéristiques de chaque biome en détail. Ces définitions influencent directement le gameplay en déterminant les défis et les opportunités de chaque région.

### Types de Biomes

Une grande variété de `BiomeDef` est prévue, tels que `TemperateForest` (Forêt Tempérée), `Desert` (Désert), `Tundra` (Toundra), `Jungle` (Jungle), `Mountain` (Montagne), et `Swamp` (Marais). Chaque `BiomeDef` spécifie des ressources, une faune/flore, des conditions climatiques, une fertilité du sol et une difficulté de construction spécifiques.

### Caractéristiques Spécifiques

Chaque `BiomeDef` influence les ressources disponibles (`wildPlantGrowsWith`, `animalDensity`), la faune et la flore, les conditions climatiques (`temperature`, `percipitation`), la fertilité du sol (`fertility`), et la difficulté de construction. Par exemple, un `BiomeDef` de désert aura une faible `fertility` et des températures extrêmes, tandis qu'une forêt tempérée aura une `fertility` élevée et une faune et flore abondantes.

**Tableau 1 : Exemples de Propriétés de BiomeDef**

| Propriété (Inspirée de RimWorld) | Type de Donnée | Description (GuildForge) |
| :------------------- | :------------- | :------------------------------------------------------------------- |
| `defName`            | `string`       | Nom unique du biome.                                                 |
| `label`              | `string`       | Nom affiché du biome.                                                |
| `description`        | `string`       | Description détaillée du biome.                                      |
| `temperature`        | `float`        | Température moyenne du biome.                                        |
| `percipitation`      | `float`        | Niveau de précipitations.                                            |
| `fertility`          | `float`        | Fertilité du sol pour l'agriculture.                                 |
| `animalDensity`      | `float`        | Densité de la faune.                                                 |
| `wildPlantGrowsWith` | `list<string>` | Types de plantes sauvages qui poussent dans ce biome.                  |
| `forageability`      | `float`        | Facilité à trouver de la nourriture par la cueillette.                |
| `movementDifficulty` | `float`        | Difficulté de déplacement sur le terrain.                            |

## 3. Sélection de Biomes et Exclusion

Lors de la création de partie, le joueur peut choisir les biomes qu'il souhaite voir apparaître sur la carte du monde. Il peut également exclure certains biomes pour affiner son expérience de jeu.

*   **Inclusion/Exclusion :** Le joueur peut cocher ou décocher les biomes souhaités dans une liste.
*   **Impact sur la génération :** L'algorithme de génération ajustera la carte pour inclure uniquement les biomes sélectionnés, ou pour éviter ceux qui sont exclus.

## 4. Références

*   [Génération Procédurale du Monde](./01_generation_procedurale.md)
*   [Gestion des Données Godot](../../verite_unique/gestion_donnees_godot.md#definitions-xml-et-migration)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

