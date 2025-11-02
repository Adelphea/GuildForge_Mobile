# Arbre Technologique Médiéval - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [game-design, recherche, technologie, progression, médiéval, savoir-faire, projets]

Ce document présente l'**arbre technologique** adapté à l'univers médiéval de GuildForge Mobile, détaillant les découvertes, les inventions et les améliorations disponibles pour la colonie. Il décrit le système de recherche qui permet aux colons de débloquer de nouvelles constructions, recettes d'artisanat et techniques, en s'appuyant sur l'étude et l'expérimentation. Ce système est le moteur de la progression collective de la colonie, influençant directement la survie et le développement de votre établissement.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Principes du Système de Recherche](#2-principes-du-système-de-recherche)
3.  [Composants du Système de Recherche](#3-composants-du-système-de-recherche)
    *   [La Table de Recherche](#31-la-table-de-recherche)
    *   [L'Arbre de Recherche](#32-larbre-de-recherche)
    *   [Les Projets de Recherche](#33-les-projets-de-recherche)
    *   [Niveaux Technologiques (techLevel)](#34-niveaux-technologiques-techlevel)
4.  [Intégration avec les Compétences](#4-intégration-avec-les-compétences)
5.  [Catégories de Projets de Recherche](#5-catégories-de-projets-de-recherche)
6.  [Références](#6-références)

---

## 1. Introduction

Le système de recherche dans GuildForge Mobile est le moteur de la progression collective de la colonie. Ancré dans un contexte médiéval, il régit l'acquisition de nouvelles connaissances et techniques, permettant aux colons de débloquer des avancées plausibles pour l'époque. Ce système est distinct de l'apprentissage individuel des [compétences des colons](../03_systeme_personnages/02_competences_et_traits.md) et vise à créer une simulation riche où le savoir est une ressource précieuse et limitée.

## 2. Principes du Système de Recherche

Le système de recherche est basé sur un concept de **Projets de Recherche**, inspiré des `ResearchProjectDef` de RimWorld, mais strictement adapté à un univers médiéval. Il permet aux colons de débloquer de nouvelles constructions, recettes d'artisanat et techniques. Pour une définition plus approfondie, se référer au [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md#projet-de-recherche).

*   **Progression Collective :** La recherche est une entreprise collective qui bénéficie à toute la colonie. Une fois un Projet de Recherche terminé, les nouvelles capacités sont disponibles pour tous les colons qualifiés, améliorant ainsi l'efficacité globale de la colonie.
*   **Ancrage Médiéval :** Les Projets de Recherche reflètent des avancées plausibles pour l'époque médiévale, allant de nouvelles techniques agricoles à des méthodes de construction plus robustes ou des procédés métallurgiques avancés.
*   **Progression Linéaire et Ramifiée :** L'Arbre de Recherche est structuré de manière logique, où des Projets de Recherche de base doivent être complétés pour débloquer des innovations plus complexes. Cette structure peut être linéaire pour certaines branches fondamentales et ramifiée pour des spécialisations, offrant des choix stratégiques au joueur.

## 3. Composants du Système de Recherche

### 3.1. La Table de Recherche

La **Table de Recherche** est le mobilier central où se déroulent les activités de recherche. C'est un atelier dédié où un colon assigné peut travailler sur un Projet de Recherche. Le temps passé par le colon à travailler sur la table contribue à la complétion du Projet de Recherche actif. La présence d'une **Bibliothèque** à proximité confère un bonus, accélérant la vitesse de complétion des Projets de Recherche, symbolisant l'accès à des connaissances accumulées.

### 3.2. L'Arbre de Recherche

L'**Arbre de Recherche** est l'interface utilisateur (menu) où le joueur peut visualiser tous les Projets de Recherche disponibles, ceux en cours et ceux déjà complétés. C'est depuis cet arbre que le joueur sélectionne le prochain Projet de Recherche à entreprendre. L'interface devra clairement montrer les dépendances, les coûts (en temps de travail et potentiellement en ressources pour les projets avancés) et la description de chaque Projet de Recherche [1].

### 3.3. Les Projets de Recherche

Un **Projet de Recherche** est une entreprise spécifique qui, une fois terminée, débloque de nouvelles capacités, recettes, ou bâtiments pour la colonie. Chaque Projet de Recherche aura des prérequis (dépendances avec d'autres Projets de Recherche), un coût en temps de travail (`baseCost`), et sera influencé par la [compétence **Intellectuel** des colons](../03_systeme_personnages/02_competences_et_traits.md) [2].

**Tableau 1 : Exemples de Propriétés de Projets de Recherche (inspiré de `ResearchProjectDef` de RimWorld)**

| Propriété | Type de Donnée | Description |
| :--- | :--- | :--- |
| `defName` | `string` | Nom unique du projet de recherche. |
| `label` | `string` | Nom affiché du projet dans l'interface utilisateur. |
| `description` | `string` | Description détaillée des bénéfices et du contexte du projet. |
| `baseCost` | `float` | Coût de recherche de base en points, représentant la quantité de travail nécessaire. |
| `techLevel` | `string` | Niveau technologique requis pour ce projet (ex: `Medieval Primitif`, `Medieval Avancé`). |
| `prerequisites` | `list<string>` | Liste des `defName` des projets de recherche qui doivent être complétés avant de pouvoir commencer celui-ci. |
| `researchViewX` | `float` | Position X dans l'interface graphique de l'arbre de recherche, pour l'organisation visuelle. |
| `researchViewY` | `float` | Position Y dans l'interface graphique de l'arbre de recherche, pour l'organisation visuelle. |
| `tab` | `string` | Onglet de l'interface de recherche auquel le projet appartient, pour le regroupement thématique. |

### 3.4. Niveaux Technologiques (`techLevel`)

Pour maintenir la cohérence avec l'univers du jeu, les Projets de Recherche seront classés selon des niveaux technologiques adaptés à l'époque médiévale, tels que :

*   `Médiéval Primitif` : Représente les connaissances de base et les techniques rudimentaires.
*   `Médiéval Avancé` : Représente des avancées significatives en matière d'ingénierie, d'agriculture ou de médecine pour l'époque.

Ces niveaux garantissent que les avancées restent fidèles à l'univers du jeu, excluant toute technologie anachronique et renforçant l'immersion.

## 4. Intégration avec les Compétences

Le Système de Recherche est directement influencé par le [Système de Compétences et d'Apprentissage](../03_systeme_personnages/02_competences_et_traits.md) [2] :

*   **Compétence "Intellectuel" :** La vitesse à laquelle un colon fait progresser un Projet de Recherche dépend de son niveau dans la [compétence **Intellectuel**](../03_systeme_personnages/02_competences_et_traits.md). Un colon avec un niveau élevé en Intellectuel sera un chercheur plus efficace, réduisant le temps nécessaire pour compléter les projets.

## 5. Catégories de Projets de Recherche

Les Projets de Recherche sont organisés en domaines thématiques, permettant une progression ciblée et une spécialisation de la colonie :

*   **Artisanat :** Projets de recherche liés aux recettes de fabrication (armes, armures, outils, vêtements, meubles) [3]. Débloque de nouvelles options de production.
*   **Agriculture :** Projets de recherche pour les techniques de culture avancées, l'élevage d'animaux spécifiques [4]. Améliore la production alimentaire et la gestion des ressources biologiques.
*   **Construction :** Projets de recherche pour de nouveaux types de bâtiments, matériaux de construction améliorés [1]. Permet de construire des structures plus solides et plus complexes.
*   **Médecine :** Projets de recherche pour les traitements des maladies, fabrication de remèdes [5]. Améliore la santé et la survie des colons.
*   **Militaire :** Projets de recherche pour les tactiques de combat, fabrication d'engins de siège [6]. Renforce les capacités défensives et offensives de la colonie.

## 6. Références

[1] [Structures et Mobilier](../04_systeme_construction/01_structures_et_mobilier.md)
[2] [Compétences et Traits des Personnages](../03_systeme_personnages/02_competences_et_traits.md)
[3] [Artisanat et Fabrication](../05_systeme_ressources_et_production/03_artisanat_et_fabrication.md)
[4] [Agriculture et Élevage](../05_systeme_ressources_et_production/02_agriculture_et_elevage.md)
[5] [Santé et Blessures des Personnages](../03_systeme_personnages/04_sante_et_blessures.md)
[6] [Système de Combat](../07_systeme_combat/README.md)
*   [README du Système de Recherche et Progression](./README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

