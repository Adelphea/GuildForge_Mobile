# Principes d'Animation - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.1
**Tags :** [art, animation, principes, fluidité, lisibilité, optimisation, mobile, sprites-2D]

Ce document décrit les principes fondamentaux qui guident la création des animations pour GuildForge Mobile. L'objectif est d'assurer la **cohérence, la fluidité et la lisibilité** des animations, tout en respectant les contraintes techniques des plateformes mobiles pour une immersion optimale du joueur. Les animations sont principalement basées sur des **sprites 2D**.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Principes Généraux](#2-principes-généraux)
    *   [Fluidité et Réactivité](#fluidité-et-réactivité)
    *   [Lisibilité](#lisibilité)
    *   [Cohérence Stylistique](#cohérence-stylistique)
    *   [Optimisation](#optimisation)
    *   [Feedback Visuel](#feedback-visuel)
3.  [Types d'Animations](#3-types-danimations)
    *   [Animations de Personnages](#animations-de-personnages)
    *   [Animations d'Objets et d'Environnement](#animations-dobjets-et-denvironnement)
4.  [Workflow et Outils](#4-workflow-et-outils)
5.  [Références](#5-références)

---

## 1. Introduction

Les animations sont un élément crucial pour donner vie au monde de GuildForge Mobile, offrant un feedback visuel essentiel et renforçant l'immersion du joueur. Elles doivent non seulement être esthétiques, mais aussi fonctionnelles, claires et optimisées pour les performances sur appareils mobiles. Ce document établit les lignes directrices pour la conception et la réalisation de toutes les animations du jeu, en mettant l'accent sur l'approche 2D par sprites.

## 2. Principes Généraux

La création d'animations dans GuildForge Mobile est régie par plusieurs principes fondamentaux :

### Fluidité et Réactivité

Les animations doivent être fluides et réactives pour donner une sensation de contrôle au joueur et améliorer l'expérience utilisateur. Les transitions entre les états d'animation doivent être naturelles et sans à-coups, évitant toute rupture d'immersion.

### Lisibilité

Chaque animation doit clairement communiquer l'action ou l'état d'un personnage ou d'un objet. Elles doivent être facilement compréhensibles, même sur de petits écrans, pour que le joueur puisse rapidement interpréter les événements du jeu.

### Cohérence Stylistique

Toutes les animations doivent s'inscrire dans la direction artistique générale du jeu. Cela implique l'utilisation de timings, de styles et de mouvements qui correspondent à l'univers médiéval et au ton réaliste de GuildForge Mobile.

### Optimisation

Compte tenu des contraintes des plateformes mobiles, les animations doivent être optimisées pour les performances. Cela inclut la minimisation du nombre de frames clés, l'évitement des calculs complexes et une gestion efficace des ressources pour garantir une fluidité constante.

### Feedback Visuel

Les animations servent de feedback visuel immédiat aux actions du joueur ou aux événements du jeu. Elles renforcent la compréhension des conséquences des actions et contribuent à une meilleure immersion.

## 3. Types d'Animations

Les animations peuvent être classées en différentes catégories, chacune ayant des objectifs spécifiques :

### Animations de Personnages

Ces animations donnent vie aux colons et aux créatures, reflétant leurs actions et leurs états :

*   **Idle (Inactif) :** Animations subtiles qui donnent vie aux personnages lorsqu'ils ne font rien, comme des micro-mouvements ou des respirations.
*   **Marche/Course :** Animations cycliques qui varient en fonction de la vitesse de déplacement du personnage, avec des transitions fluides entre les différentes allures.
*   **Actions (Attaque, Collecte, Construction) :** Animations claires et distinctes pour chaque action, avec des points clés visuellement marqués pour indiquer le début et la fin de l'action. Elles doivent être réactives aux commandes du joueur.
*   **Réactions (Blessure, Mort) :** Animations expressives qui communiquent l'état du personnage, telles que la douleur, la chute ou la mort, renforçant l'impact des événements du jeu.

### Animations d'Objets et d'Environnement

Ces animations enrichissent le monde du jeu et fournissent un feedback sur les interactions avec l'environnement :

*   **Interaction :** Animations pour les portes qui s'ouvrent, les leviers qui s'activent, les objets qui sont ramassés ou utilisés, rendant le monde plus interactif.
*   **Effets Visuels (VFX) :** Animations pour les effets de particules (fumée, étincelles, poussière), les éclaboussures d'eau, ou les effets de destruction, qui ajoutent du dynamisme et du réalisme.
*   **Environnement :** Animations subtiles pour les éléments environnementaux, comme les feuilles qui bougent au vent, l'eau qui coule ou les flammes d'un feu, pour rendre le monde plus vivant et crédible.

## 4. Workflow et Outils

Le workflow détaillé pour la création, l'exportation et l'intégration des animations, ainsi que les outils spécifiques utilisés, sont décrits dans le document [Workflow d'Animation Godot](./workflow_animation_godot.md).

## 5. Références

*   [Documentation Artistique Générale](../../README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)
*   [Workflow d'Animation Godot](./workflow_animation_godot.md)

