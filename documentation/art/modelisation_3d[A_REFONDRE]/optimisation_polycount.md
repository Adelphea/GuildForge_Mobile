# Optimisation du Nombre de Polygones - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.1
**Tags :** [art, modélisation-3D, optimisation, polycount, mobile, performance, Godot, LOD]

Ce document décrit les techniques et les limites de polycount pour les différents types d'assets 3D dans GuildForge Mobile. L'objectif est de maintenir des performances optimales sur les appareils mobiles tout en préservant la qualité visuelle et le style artistique du jeu.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Principes d'Optimisation](#2-principes-doptimisation)
    *   [Priorisation des Assets](#21-priorisation-des-assets)
    *   [Techniques de Réduction de Polycount](#22-techniques-de-réduction-de-polycount)
3.  [Limites de Polycount Recommandées (par Asset)](#3-limites-de-polycount-recommandées-par-asset)
4.  [Niveau de Détail (LOD - Level of Detail)](#4-niveau-de-détail-lod---level-of-detail)
5.  [Références](#5-références)

---

## 1. Introduction

L'optimisation du nombre de polygones (polycount) est une étape cruciale dans le pipeline de création d'assets 3D pour les jeux mobiles. Un polycount excessif peut entraîner des chutes de framerate, une consommation de batterie élevée et une expérience de jeu dégradée. Ce document fournit des directives pour équilibrer la fidélité visuelle et les performances sur la plateforme cible.

## 2. Principes d'Optimisation

### 2.1. Priorisation des Assets

*   **Assets Majeurs (Personnages, Bâtiments Principaux) :** Peuvent avoir un polycount légèrement plus élevé en raison de leur importance visuelle et de leur présence constante à l'écran.
*   **Assets Secondaires (Objets, Petits Décors) :** Doivent être rigoureusement optimisés, avec un polycount minimal.
*   **Assets en Arrière-Plan :** Peuvent être simplifiés davantage, voire remplacés par des billboards ou des modèles 2D si la distance le permet.

### 2.2. Techniques de Réduction de Polycount

*   **Retopologie Manuelle :** Créer une nouvelle topologie optimisée pour les modèles haute résolution.
*   **Décimation / Réduction Automatique :** Utiliser des outils pour réduire le nombre de polygones, en veillant à préserver les détails importants et la silhouette.
*   **Suppression des Faces Invisibles :** Éliminer les polygones qui ne seront jamais vus par le joueur (ex: faces intérieures d'un mur).
*   **Utilisation de Normal Maps :** Transférer les détails d'un modèle haute résolution sur un modèle basse résolution via des normal maps, permettant de simuler des détails sans augmenter le polycount.

## 3. Limites de Polycount Recommandées (par Asset)

Ces valeurs sont des lignes directrices et peuvent varier en fonction de la complexité de la scène et du nombre d'assets affichés simultanément.

| Type d'Asset | Polycount Max (Triangles) |
| :--- | :--- |
| Personnages Principaux | 3000 - 5000 |
| Personnages Secondaires / PNJ | 1000 - 2500 |
| Bâtiments Majeurs | 5000 - 10000 |
| Bâtiments Mineurs / Structures | 1000 - 4000 |
| Objets Interactifs | 200 - 800 |
| Objets de Décoration | 50 - 300 |
| Végétation (Arbres, Buissons) | 100 - 1000 (par instance, avec LOD) |

## 4. Niveau de Détail (LOD - Level of Detail)

L'implémentation de LOD est essentielle pour les assets qui apparaissent à différentes distances de la caméra. Cela permet d'utiliser des modèles plus simples lorsque l'objet est éloigné, réduisant ainsi la charge de rendu.

*   **Création de LODs :** Chaque asset important doit avoir au moins 2-3 niveaux de détail (High, Medium, Low).
*   **Transitions :** Assurer des transitions fluides entre les LODs pour éviter les pop-ins visibles.

## 5. Références

*   [Modélisation 3D Générale](../README.md)
*   [Export et Intégration Godot](./export_integration_godot.md)
*   [Optimisation des Performances (Technique)](../../technique/optimisation_performance/strategies_optimisation_performance.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

