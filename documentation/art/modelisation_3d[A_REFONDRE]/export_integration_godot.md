# Export et Intégration Godot - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.1
**Tags :** [art, modélisation-3D, Godot, export, intégration, workflow, mobile, glTF]

Ce document présente le workflow recommandé pour l'exportation des modèles 3D depuis les logiciels de modélisation et leur intégration dans le moteur de jeu Godot pour GuildForge Mobile. Il inclut la configuration des scènes, des matériaux et des animations, en mettant l'accent sur l'efficacité et l'optimisation pour les plateformes mobiles. L'objectif est de garantir la fidélité visuelle et les performances.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Workflow d'Exportation depuis les Logiciels 3D](#2-workflow-dexportation-depuis-les-logiciels-3d)
    *   [Préparation du Modèle](#21-préparation-du-modèle)
    *   [Paramètres d'Exportation](#22-paramètres-dexportation)
3.  [Intégration dans Godot Engine](#3-intégration-dans-godot-engine)
    *   [Importation et Configuration](#31-importation-et-configuration)
    *   [Matériaux et Textures](#32-matériaux-et-textures)
    *   [Animations](#33-animations)
4.  [Optimisation pour Mobile](#4-optimisation-pour-mobile)
5.  [Références](#5-références)

---

## 1. Introduction

L'intégration des assets 3D dans Godot Engine est une étape critique qui nécessite une attention particulière pour garantir la fidélité visuelle et les performances. Ce document fournit un guide étape par étape pour exporter correctement les modèles depuis les logiciels de création (Blender, etc.) et les importer efficacement dans Godot, en s'assurant que tous les composants (maillages, textures, matériaux, animations) sont correctement configurés.

## 2. Workflow d'Exportation depuis les Logiciels 3D

### 2.1. Préparation du Modèle

Avant l'exportation, assurez-vous que le modèle est prêt :

*   **Nettoyage :** Supprimer les faces invisibles, les sommets et arêtes isolés, et les doublons.
*   **Origine et Échelle :** Appliquer les transformations (rotation, échelle) et s'assurer que l'origine du modèle est au bon endroit (généralement au centre de la base pour les objets posables, ou au centre de la masse pour les personnages).
*   **Nommage :** Vérifier que tous les objets (maillages, armatures, lumières) respectent les [Conventions de Nommage des Modèles 3D](./conventions_nommage_modeles.md).
*   **UV Mapping :** S'assurer que le modèle possède un UV mapping propre et sans chevauchement pour les textures.
*   **Armature et Poids (pour les personnages/objets animés) :** Vérifier que l'armature est correctement configurée et que les poids sont bien appliqués aux sommets.

### 2.2. Paramètres d'Exportation

Le format `.gltf` (GL Transmission Format) est le format d'exportation privilégié pour Godot en raison de sa légèreté et de son support complet des scènes 3D (maillages, matériaux, textures, animations).

*   **Format :** `.gltf` ou `.glb` (version binaire du glTF).
*   **Options Recommandées :**
    *   **Appliquer Modificateurs :** Activer pour que les modificateurs soient appliqués avant l'exportation.
    *   **Inclure :** Maillages, Matériaux, Textures, Armatures, Animations.
    *   **Compression :** Utiliser la compression Draco si disponible pour réduire la taille du fichier (nécessite l'activation du plugin Godot).
    *   **Y-Up :** S'assurer que l'axe Y est configuré comme l'axe "haut" (up) pour correspondre à la convention de Godot.

## 3. Intégration dans Godot Engine

### 3.1. Importation et Configuration

1.  **Importation :** Importer le fichier `.gltf` ou `.glb` dans le projet Godot. Godot détectera automatiquement les maillages, matériaux et animations.
2.  **Configuration d'Importation :** Ajuster les paramètres d'importation si nécessaire (par exemple, pour la génération de LOD ou la compression de texture).
3.  **Création de Scène :** Créer une nouvelle scène héritée du fichier importé pour pouvoir l'instancier et le manipuler facilement.

### 3.2. Matériaux et Textures

*   **Vérification des Matériaux :** S'assurer que les matériaux sont correctement appliqués et que les textures sont liées. Ajuster les propriétés des matériaux (PBR, transparence) si nécessaire.
*   **Compression des Textures :** Utiliser les options de compression de texture de Godot pour réduire la taille des assets en mémoire, en particulier pour les appareils mobiles.

### 3.3. Animations

*   **Vérification des Animations :** S'assurer que toutes les animations exportées sont présentes et fonctionnent correctement dans Godot.
*   **Configuration de l'AnimationPlayer :** Utiliser le nœud `AnimationPlayer` pour gérer les différentes animations et leurs transitions.
*   **AnimationTree :** Pour des personnages complexes, configurer un `AnimationTree` pour une gestion avancée des états et des mélanges d'animations.

## 4. Optimisation pour Mobile

*   **Réduction du Nombre de Polys :** S'assurer que les modèles sont optimisés en termes de nombre de polygones pour les performances mobiles.
*   **Batching :** Utiliser des matériaux et des textures partagés autant que possible pour maximiser le batching et réduire les draw calls.
*   **Culling :** Implémenter des techniques de culling (occlusion culling, frustum culling) pour ne rendre que les objets visibles.

## 5. Références

*   [Modélisation 3D Générale](../README.md)
*   [Conventions de Nommage des Modèles 3D](./conventions_nommage_modeles.md)
*   [Optimisation des Performances](../../technique/optimisation_performance/strategies_optimisation_performance.md)
*   [Documentation Godot sur l'Importation 3D](https://docs.godotengine.org/en/stable/tutorials/assets_pipeline/importing_3d_scenes/index.html)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

