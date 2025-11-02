# Création de Matériaux Godot - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [art, matériaux, Godot, shader, textures, optimisation, mobile, performance]

Ce document décrit les principes et les techniques de création de matériaux dans Godot Engine pour GuildForge Mobile. L'objectif est d'optimiser l'apparence visuelle des assets tout en garantissant des performances optimales sur les appareils mobiles. Il couvre les types de matériaux, leur configuration et les stratégies d'optimisation des textures.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Types de Matériaux dans Godot](#2-types-de-matériaux-dans-godot)
3.  [Création de Matériaux StandardMaterial3D](#3-création-de-matériaux-standardmaterial3d)
4.  [Utilisation de ShaderMaterial pour l'Optimisation et les Effets Spécifiques](#4-utilisation-de-shadermaterial-pour-loptimisation-et-les-effets-spécifiques)
5.  [Optimisation des Textures pour Mobile](#5-optimisation-des-textures-pour-mobile)
6.  [Références](#6-références)

---

## 1. Introduction

La création de matériaux est un aspect fondamental de la direction artistique de GuildForge Mobile. Elle permet de donner vie aux modèles 3D et aux éléments 2D, en définissant leur apparence, leur interaction avec la lumière et leurs propriétés physiques. Pour un jeu mobile, il est crucial d'équilibrer la qualité visuelle avec les contraintes de performance. Ce guide se concentre sur l'utilisation efficace des outils de matériaux de Godot Engine pour atteindre cet équilibre.

## 2. Types de Matériaux dans Godot

Godot Engine offre une flexibilité dans la gestion des matériaux, avec plusieurs types adaptés à divers besoins :

*   **StandardMaterial3D :** C'est le type de matériau le plus couramment utilisé pour les objets 3D. Il offre une large gamme de propriétés configurables (albedo, normal map, roughness, metallic, etc.) et est généralement performant pour la plupart des cas d'utilisation.
*   **ShaderMaterial :** Permet de créer des matériaux entièrement personnalisés en écrivant des shaders GLSL. Il est idéal pour implémenter des effets visuels uniques, des optimisations spécifiques ou des comportements non standards qui ne sont pas couverts par les matériaux standard.
*   **CanvasItemMaterial :** Spécifiquement conçu pour les éléments 2D et l'interface utilisateur (UI), il permet de contrôler le rendu des `CanvasItem`.

## 3. Création de Matériaux StandardMaterial3D

Pour la majorité des assets 3D, le `StandardMaterial3D` est la solution recommandée. Voici les étapes clés pour sa configuration :

1.  **Albedo (Couleur de Base) :** Définissez la couleur de base de l'objet ou assignez une texture d'albedo. Pour un style pixel art, une texture d'albedo basse résolution est souvent suffisante et contribue à l'optimisation.
2.  **Normal Map :** Utilisez une normal map pour ajouter des détails de surface sans augmenter le nombre de polygones du modèle. Cela est essentiel pour simuler des reliefs et des textures complexes avec un faible coût de performance.
3.  **Roughness / Metallic :** Ajustez ces propriétés pour contrôler la réflectivité et la brillance de la surface. Des valeurs faibles pour le *roughness* donnent une surface lisse et brillante, tandis que des valeurs élevées la rendent mate. La propriété *metallic* détermine si le matériau est un métal ou un diélectrique.
4.  **Occlusion Ambiante (AO) :** Une texture d'occlusion ambiante peut être utilisée pour simuler l'auto-ombrage dans les creux et les recoins des objets, ajoutant de la profondeur et du réalisme.
5.  **Émission :** Configurez la propriété d'émission pour les objets qui doivent émettre de la lumière, comme des torches, des cristaux lumineux ou des éléments d'interface.

## 4. Utilisation de ShaderMaterial pour l'Optimisation et les Effets Spécifiques

Les `ShaderMaterial` offrent une puissance et une flexibilité inégalées pour des besoins avancés :

*   **Shaders de Pixel Art :** Créez des shaders qui simulent des effets de pixel art, tels que des palettes de couleurs limitées, des effets de dithering ou des contours stylisés, pour renforcer l'esthétique du jeu.
*   **Optimisation des Effets :** Implémentez des effets visuels complexes directement dans le shader pour une meilleure performance que des solutions basées sur des nœuds ou des multiples passes de rendu.
*   **Matériaux Uniques :** Développez des matériaux avec des comportements non standards, comme des matériaux transparents avec des effets de réfraction, des matériaux réagissant de manière spécifique à la lumière ou des effets de déformation.

## 5. Optimisation des Textures pour Mobile

L'optimisation des textures est cruciale pour les performances sur mobile :

*   **Formats de Compression :** Godot gère automatiquement la conversion des textures vers des formats compressés spécifiques à la plateforme (par exemple, ETC2 pour Android, PVRTC pour iOS) lors de l'importation. Assurez-vous de fournir des textures source de haute qualité.
*   **Résolutions :** Maintenez les résolutions de texture aussi basses que possible sans compromettre la qualité visuelle. Référez-vous au document [Formats et Résolutions](./formats_resolutions.md) pour les directives spécifiques.
*   **Atlas de Textures :** Regroupez plusieurs petites textures dans une seule grande texture (atlas) pour réduire le nombre d'appels de rendu et améliorer les performances GPU.

## 6. Références

*   [Textures et Matériaux Généraux](../README.md)
*   [Formats et Résolutions](./formats_resolutions.md)
*   [Documentation Godot sur les Matériaux](https://docs.godotengine.org/en/stable/tutorials/3d/materials/index.html)
*   [Documentation Godot sur les Shaders](https://docs.godotengine.org/en/stable/tutorials/shaders/index.html)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

