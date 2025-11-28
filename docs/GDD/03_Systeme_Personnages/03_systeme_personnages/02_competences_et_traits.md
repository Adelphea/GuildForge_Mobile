# Compétences et Traits des Personnages - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [game-design, personnages, compétences, traits, apprentissage, progression, passions, médiéval]

Ce document détaille le système de **compétences** (cuisine, artisanat, combat, etc.) et de **traits de caractère** (optimiste, paresseux, etc.) des personnages dans GuildForge Mobile, ainsi que leur évolution et leur impact sur le gameplay. Il décrit également les interactions entre la progression individuelle des colons et la progression collective de la colonie, en s'intégrant au [système de recherche et progression](../06_systeme_recherche_et_progression/README.md).

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Système de Compétences et d'Apprentissage](#2-système-de-compétences-et-dapprentissage)
    *   [Principes Généraux](#21-principes-généraux)
    *   [Acquisition et Évolution des Compétences](#22-acquisition-et-évolution-des-compétences)
        *   [Apprentissage par la Pratique](#apprentissage-par-la-pratique)
        *   [Le Système de "Flamme" (Passion)](#le-système-de-flamme-passion)
    *   [Liste des 12 Compétences (Niveaux 0-20)](#23-liste-des-12-compétences-niveaux-0-20)
    *   [Conséquences de l'Échec et Déclin des Compétences](#24-conséquences-de-léchec-et-déclin-des-compétences)
3.  [Traits de Caractère et Historique (Backstory)](#3-traits-de-caractère-et-historique-backstory)
4.  [Interactions avec le Système de Recherche](#4-interactions-avec-le-système-de-recherche)
    *   [Influence des Compétences sur la Recherche](#41-influence-des-compétences-sur-la-recherche)
    *   [Influence de la Recherche sur l'Apprentissage](#42-influence-de-la-recherche-sur-lapprentissage)
    *   [Rôle des Bâtiments Spécifiques](#43-rôle-des-bâtiments-spécifiques)
5.  [Recommandations et Équilibrage](#5-recommandations-et-équilibrage)
6.  [Références](#6-références)

---

## 1. Introduction

Le système de compétences et de traits est au cœur de la gestion des personnages dans GuildForge Mobile. Il régit la progression individuelle des colons, leur efficacité dans les tâches et leur comportement. Ce système est conçu pour être dynamique, réaliste et profondément intégré aux autres mécaniques de jeu, notamment le [système de recherche](../06_systeme_recherche_et_progression/README.md).

## 2. Système de Compétences et d'Apprentissage

### 2.1. Principes Généraux

Les compétences sont propres à chaque colon et s'améliorent par l'expérience acquise en effectuant des tâches pertinentes. Le niveau d'une compétence influence directement la vitesse d'exécution et le taux de succès des tâches associées. Un niveau élevé permet une exécution rapide et réussie, tandis qu'un niveau bas ralentit le colon et augmente le risque d'échec. Chaque compétence a un niveau maximum de 20.

### 2.2. Acquisition et Évolution des Compétences

#### Apprentissage par la Pratique

Les colons gagnent de l'expérience dans une compétence spécifique en réalisant des actions qui y sont liées. Plus une tâche est effectuée, plus le colon progresse dans la compétence associée. Par exemple, un colon qui mine du minerai gagnera de l'expérience en **Minage**.

#### Le Système de "Flamme" (Passion)

Le système de "flamme" représente la passion d'un colon pour une compétence donnée. Cette passion augmente significativement la vitesse à laquelle le colon apprend et progresse dans cette compétence. Il existe trois niveaux de passion :

*   **Pas de flamme :** Vitesse d'apprentissage normale.
*   **Flamme simple :** Vitesse d'apprentissage augmentée (par exemple, +50%).
*   **Double flamme :** Vitesse d'apprentissage fortement augmentée (par exemple, +100%).

Les flammes peuvent être innées (liées aux [traits de caractère](#3-traits-de-caractère-et-historique-backstory) ou à l'[historique](./01_creation_et_historique.md)) ou acquises via des événements ou des interactions spécifiques.

### 2.3. Liste des 12 Compétences (Niveaux 0-20)

Le tableau suivant détaille les 12 compétences principales, avec leur méthode principale d'acquisition d'expérience :

| Compétence | Description et Acquisition d'Expérience |
| :--- | :--- |
| **Tir** | Emploi de tout type d'arme à distance. |
| **Mêlée** | Emploi de tout type d'arme de mêlée ainsi que le combat à main nue. |
| **Construction** | Construction de n'importe quel élément des catalogues de construction. |
| **Minage** | Extraction de minéraux. |
| **Cuisine** | Transformation de nourriture. |
| **Agriculture** | Semis, soins des plantes et leurs récoltes. |
| **Animaux** | Apprivoisement, dressage. |
| **Artisanat** | Fabrication de tout type d'objets, comme des armes et des outils. |
| **Art** | Création d'œuvre d'art. |
| **Médecine** | Soins de blessure, des maladies et en pratiquant la chirurgie. |
| **Sociabilité** | Activités sociales. |
| **Intellectuel** | Recherches sur la table de recherche. |

### 2.4. Conséquences de l'Échec et Déclin des Compétences

Un faible niveau de compétence augmente le risque d'échec lors de l'exécution d'une tâche. Les conséquences d'un échec sont variées et spécifiques à la compétence (ex: destruction de ressources en artisanat, aggravation de l'état d'un patient en médecine). Les compétences peuvent décliner si elles ne sont pas pratiquées, un déclin qui s'accentue légèrement avec l'âge.

## 3. Traits de Caractère et Historique (Backstory)

Les **traits de caractère** et l'**historique** d'un colon peuvent avoir un impact profond sur ses compétences, ses passions et ses incapacités. Pour plus de détails sur la création des personnages et l'influence de l'historique, se référer à [Création et Historique des Personnages](./01_creation_et_historique.md).

*   **Bonus/Malus de Niveaux :** Certains traits peuvent ajouter ou enlever des niveaux initiaux à une compétence.
*   **Incapacité :** Des traits ou des historiques peuvent rendre un colon incapable d'apprendre ou d'exercer certaines compétences (ex: un colon "Pacifiste" pourrait être incapable de développer la compétence **Mêlée**).

## 4. Interactions avec le Système de Recherche

Le système de compétences interagit de manière significative avec le [système de recherche et progression](../06_systeme_recherche_et_progression/README.md) de la colonie.

### 4.1. Influence des Compétences sur la Recherche

La compétence **Intellectuel** est la principale compétence qui influence la vitesse de progression des **Projets de recherche**. Un colon assigné à la **Table de recherche** avec un niveau élevé en Intellectuel contribuera plus rapidement à la complétion du projet.

### 4.2. Influence de la Recherche sur l'Apprentissage

Le déblocage de certains **Projets de recherche** peut rendre disponibles de nouvelles actions ou outils qui, à leur tour, permettent aux colons de pratiquer et de développer des compétences spécifiques. Par exemple, le déblocage du projet "Fonderie" permet la construction d'une fonderie, offrant de nouvelles opportunités de pratique pour les compétences **Artisanat** et **Minage**.

### 4.3. Rôle des Bâtiments Spécifiques

Certains bâtiments servent de catalyseurs pour les interactions entre les systèmes. Par exemple, la présence d'une **Bibliothèque** à proximité d'une **Table de recherche** confère un bonus de vitesse significatif à la Recherche.

## 5. Recommandations et Équilibrage

*   **Définition des Niveaux de Compétence :** Il est recommandé de définir des paliers ou des niveaux (ex: Novice, Apprenti, Compagnon, Maître) pour chaque compétence et d'expliquer comment ils impactent concrètement le gameplay.
*   **Catalogues de Données :** La création d'un `catalogue_competences.json` est recommandée pour lister les 12 compétences, leur description, et les actions qui leur donnent de l'expérience, facilitant ainsi la gestion des données du jeu.
*   **Équilibrage :** Les traits de caractère, l'historique et les passions doivent être soigneusement équilibrés pour créer des colons uniques et des stratégies de colonie variées.

## 6. Références

*   [Création et Historique des Personnages](./01_creation_et_historique.md)
*   [Système de Recherche et Progression](../06_systeme_recherche_et_progression/README.md)
*   [README du Game Design](../../game_design/README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

