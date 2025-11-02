# Workflow d'Animation Godot - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [art, animation, workflow, Godot, pipeline, pixel-art, 2D, mobile, optimisation]

Ce document décrit le workflow recommandé pour la création, l'exportation et l'intégration des animations en **Pixel Art 2D** dans le moteur de jeu Godot pour GuildForge Mobile. L'objectif est d'établir un pipeline efficace et optimisé pour les performances mobiles, en accord avec la direction artistique 2D du projet. Il couvre les outils, les étapes de préparation des sprites, la création des animations, leur intégration dans Godot et les techniques d'optimisation spécifiques au mobile.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Outils et Logiciels](#2-outils-et-logiciels)
3.  [Workflow d'Animation 2D](#3-workflow-danimation-2d)
    *   [Préparation des Sprites](#31-préparation-des-sprites)
    *   [Création des Animations](#32-création-des-animations)
    *   [Exportation des Spritesheets](#33-exportation-des-spritesheets)
    *   [Intégration dans Godot Engine](#34-intégration-dans-godot-engine)
4.  [Optimisation pour Mobile](#4-optimisation-pour-mobile)
5.  [Références](#5-références)

---

## 1. Introduction

Ce document décrit le workflow recommandé pour la création, l'exportation et l'intégration des animations en **Pixel Art 2D** dans le moteur de jeu Godot pour GuildForge Mobile. L'objectif est d'établir un pipeline efficace et optimisé pour les performances mobiles, en accord avec la direction artistique 2D du projet.

## 2. Outils et Logiciels

*   **Logiciel de Pixel Art et d'Animation 2D :** Aseprite, Pyxel Edit, ou tout autre logiciel permettant la création de sprites et de spritesheets en pixel art.
*   **Moteur de Jeu :** Godot Engine (version 4.x).

## 3. Workflow d'Animation 2D

### 3.1. Préparation des Sprites

1.  **Design des Personnages/Objets :** Créer les designs des personnages, objets et éléments interactifs en pixel art, en respectant la charte graphique et les résolutions définies.
2.  **Découpage en Frames :** Pour chaque animation, dessiner les différentes frames nécessaires pour créer le mouvement souhaité.
3.  **Organisation en Spritesheets :** Organiser les frames d'animation en spritesheets (feuilles de sprites) pour optimiser l'intégration dans Godot. Utiliser une taille de tuile cohérente (ex: 16x16, 32x32 pixels).

### 3.2. Création des Animations

1.  **Animation Frame par Frame :** Animer les sprites en créant des séquences d'images. S'assurer que les animations cycliques (marche, idle) sont parfaitement bouclées.
2.  **Optimisation des Frames :** Réduire le nombre de frames inutiles pour optimiser la taille des fichiers et les performances, tout en conservant la fluidité.

### 3.3. Exportation des Spritesheets

1.  **Format d'Exportation :** Exporter les spritesheets au format **PNG** avec transparence. S'assurer que les dimensions sont des puissances de 2 si des optimisations spécifiques à la GPU sont envisagées, bien que Godot gère bien d'autres tailles.

### 3.4. Intégration dans Godot Engine

1.  **Importation :** Importer les fichiers PNG des spritesheets dans le projet Godot.
2.  **Configuration des AnimationPlayer 2D ou AnimatedSprite2D :**
    *   **AnimatedSprite2D :** Pour des animations simples et directes, utiliser le nœud `AnimatedSprite2D`. Configurer les animations (frames, vitesse, boucle) directement dans l'éditeur.
    *   **AnimationPlayer :** Pour des animations plus complexes, des transitions ou des animations de propriétés (position, échelle, couleur), utiliser le nœud `AnimationPlayer` en conjonction avec un `Sprite2D` ou `TextureRect`. Créer des pistes d'animation pour les propriétés ou les changements de frame.
3.  **AnimationTree (pour les personnages complexes) :**
    *   Utiliser un nœud `AnimationTree` pour gérer les transitions complexes entre les animations (ex: passer de `Idle` à `Walk` puis à `Run`).
    *   Configurer un `BlendSpace2D` pour les mouvements directionnels ou un `StateMachine` pour les états d'animation (Idle, Attaque, Mort).
4.  **Scripts :** Contrôler l'état des nœuds d'animation via des scripts GDScript, en fonction des entrées du joueur ou de la logique du jeu.

## 4. Optimisation pour Mobile

*   **Spritesheets Efficaces :** Regrouper les animations et les variations de sprites sur des spritesheets pour réduire le nombre d'appels de rendu.
*   **Compression des Textures :** Utiliser les options de compression de texture de Godot pour les images PNG afin de réduire la taille des assets en mémoire.
*   **Réduction du Overdraw :** Optimiser les masques de collision et les zones transparentes pour minimiser le surdessin.
*   **Niveaux de Détail (LOD) 2D :** Pour les éléments éloignés ou moins importants, envisager des versions simplifiées ou des sprites de plus petite résolution.

## 5. Références

*   [Principes d'Animation](./principes_animation.md)
*   [Documentation Godot sur l'Animation 2D](https://docs.godotengine.org/en/stable/tutorials/2d/2d_sprite_animation.html)
*   [Documentation Godot sur les AnimatedSprite2D](https://docs.godotengine.org/en/stable/classes/class_animatedsprite2d.html)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

