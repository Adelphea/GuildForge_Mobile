# Conventions de Nommage des Modèles 3D - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.1
**Tags :** [art, modélisation-3D, nommage, conventions, organisation, Godot]

Ce document détaille les conventions de nommage à suivre pour les fichiers de modèles 3D, les objets, les matériaux et les animations dans GuildForge Mobile. L'objectif est d'assurer une organisation claire, une facilité de gestion et une intégration sans erreur dans le moteur de jeu Godot, facilitant ainsi la collaboration entre les artistes et les développeurs.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Principes Généraux de Nommage](#2-principes-généraux-de-nommage)
    *   [Clarté et Descriptivité](#clarté-et-descriptivité)
    *   [Cohérence](#cohérence)
    *   [Lisibilité](#lisibilité)
    *   [Préfixes/Suffixes](#préfixes/suffixes)
3.  [Conventions Spécifiques](#3-conventions-spécifiques)
    *   [Fichiers de Modèles 3D (.blend, .fbx, .gltf)](#31-fichiers-de-modèles-3d-blend-fbx-gltf)
    *   [Objets dans les Scènes 3D (Nœuds Godot)](#32-objets-dans-les-scènes-3d-nœuds-godot)
    *   [Matériaux](#33-matériaux)
    *   [Textures](#34-textures)
    *   [Animations](#35-animations)
4.  [Références](#4-références)

---

## 1. Introduction

Des conventions de nommage cohérentes sont cruciales pour maintenir l'ordre et l'efficacité dans un projet de jeu, en particulier avec un grand nombre d'assets 3D. Elles facilitent la recherche, l'identification et la collaboration entre les artistes et les développeurs. Ce document établit un ensemble de règles strictes pour le nommage de tous les éléments liés à la modélisation 3D.

## 2. Principes Généraux de Nommage

### Clarté et Descriptivité

Les noms doivent être clairs, concis et décrire précisément l'objet ou l'élément qu'ils représentent.

### Cohérence

Appliquer les mêmes règles de nommage à travers tous les assets et tous les dossiers.

### Lisibilité

Utiliser des séparateurs (underscore `_` ou camelCase) pour améliorer la lisibilité.

### Préfixes/Suffixes

Utiliser des préfixes ou suffixes pour indiquer le type d'asset, son état ou sa fonction.

## 3. Conventions Spécifiques

### 3.1. Fichiers de Modèles 3D (.blend, .fbx, .gltf)

*   **Format :** `[Catégorie]_[NomObjet]_[Variante].extension`
*   **Exemples :**
    *   `Prop_Table_Bois01.blend`
    *   `Char_Colon_Male01.fbx`
    *   `Bld_Maison_Niveau01.gltf`

### 3.2. Objets dans les Scènes 3D (Nœuds Godot)

*   **Format :** `[TypeObjet]_[NomObjet]_[Numéro]`
*   **Exemples :**
    *   `Mesh_Table_01`
    *   `Armature_Colon_Male`
    *   `Light_Torche_Murale`

### 3.3. Matériaux

*   **Format :** `Mat_[NomMatériau]_[Propriété]`
*   **Exemples :**
    *   `Mat_Bois_Clair`
    *   `Mat_Pierre_Mousse`
    *   `Mat_Metal_Rouille`

### 3.4. Textures

*   **Format :** `Tex_[NomTexture]_[TypeMap]_[Résolution]`
*   **Exemples :**
    *   `Tex_Bois_Clair_Albedo_2K`
    *   `Tex_Pierre_Mousse_Normal_1K`
    *   `Tex_Metal_Rouille_Roughness_512`

### 3.5. Animations

*   **Format :** `Anim_[Action]_[Variante]`
*   **Exemples :**
    *   `Anim_Idle_Calm`
    *   `Anim_Walk_Heavy`
    *   `Anim_Attack_Sword01`

## 4. Références

*   [Modélisation 3D Générale](../README.md)
*   [Export et Intégration Godot](./export_integration_godot.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

