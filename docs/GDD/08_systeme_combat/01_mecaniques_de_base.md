# Mécaniques de Combat de Base - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [game-design, combat, mécaniques, dégâts, blessures, mêlée, distance, tactique, médiéval]

Ce document détaille les **mécaniques fondamentales du combat** dans GuildForge Mobile, incluant le ciblage, les dégâts, la précision, la couverture et les différents types d'attaques (mêlée, à distance). Il met l'accent sur un système tactique et réaliste, fidèle à l'univers médiéval du jeu, et s'intègre étroitement avec les systèmes de [santé et blessures](../03_systeme_personnages/04_sante_et_blessures.md) et d'[équipement et armement](./02_equipement_et_armement.md).

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Principes Généraux du Combat](#2-principes-généraux-du-combat)
3.  [Types de Combat](#3-types-de-combat)
    *   [Combat au Corps à Corps (Mêlée)](#31-combat-au-corps-à-corps-mêlée)
    *   [Combat à Distance (Armes de Jet)](#32-combat-à-distance-armes-de-jet)
4.  [Types de Dégâts et Capacités d'Outils](#4-types-de-dégâts-et-capacités-doutils)
5.  [Effets de Statut et Blessures Localisées](#5-effets-de-statut-et-blessures-localisées)
6.  [Références](#6-références)

---

## 1. Introduction

Le système de combat de GuildForge Mobile est conçu pour être tactique, réaliste et intégré à l'univers médiéval du jeu. Il prend en compte les [compétences des colons](../03_systeme_personnages/02_compétences_et_traits.md), l'[équipement](./02_equipement_et_armement.md), l'environnement et les types d'ennemis, sans éléments fantastiques. La survie de la colonie dépendra de la capacité du joueur à comprendre et à maîtriser ces mécaniques, ainsi qu'à gérer efficacement ses colons et leurs ressources.

## 2. Principes Généraux du Combat

Le combat dans GuildForge Mobile repose sur plusieurs principes fondamentaux qui guident son design et son implémentation :

*   **Réalisme Médiéval :** Le combat reflète les techniques et les limitations de l'époque médiévale. Il n'y a pas de magie ni de créatures fantastiques, mais des menaces crédibles pour l'époque (bandits, animaux sauvages, factions rivales).
*   **Tactique et Positionnement :** L'environnement, le terrain (couverture, obstacles) et le positionnement des colons jouent un rôle prépondérant dans l'issue des affrontements. Une bonne stratégie peut compenser un désavantage numérique ou d'équipement.
*   **Gestion des Blessures :** Les blessures sont détaillées et ont des impacts significatifs et localisés sur les colons, influençant leurs capacités et leur survie [1]. Chaque partie du corps peut être affectée, avec des conséquences spécifiques.
*   **Équipement Crucial :** L'[armure et les armes](./02_equipement_et_armement.md) sont essentielles, et leurs caractéristiques (type de dégâts, protection, portée) influencent directement l'efficacité au combat [2].

## 3. Types de Combat

Le combat se divise en deux catégories principales, chacune avec ses spécificités et ses exigences tactiques.

### 3.1. Combat au Corps à Corps (Mêlée)

Le combat en mêlée implique des engagements directs entre colons et ennemis à courte portée. Il est souvent brutal et décisif.

*   **Description :** Engagements directs entre colons et ennemis à courte portée, nécessitant une proximité physique.
*   **Facteurs Clés :** La [compétence en **Mêlée**](../03_systeme_personnages/02_compétences_et_traits.md) du colon, le type d'arme (épée, hache, lance), la qualité de l'[armure](./02_equipement_et_armement.md) et les [traits de caractère](../03_systeme_personnages/02_compétences_et_traits.md) (ex: force, agilité) influencent l'efficacité et l'issue du combat [2, 3]. Le positionnement est crucial pour éviter d'être encerclé.

### 3.2. Combat à Distance (Armes de Jet)

Le combat à distance permet d'engager les ennemis avant qu'ils n'atteignent la colonie, mais nécessite une bonne gestion de la ligne de vue et des munitions.

*   **Description :** Engagements à distance utilisant des armes de jet (arcs, arbalètes, frondes, javelots).
*   **Facteurs Clés :** La [compétence en **Tir**](../03_systeme_personnages/02_compétences_et_traits.md) du colon, le type d'[arme à distance](./02_equipement_et_armement.md), la portée, le type de munitions, ainsi que les obstacles (couverture, ligne de vue) sont déterminants pour la précision et les dégâts [2, 3]. La gestion des munitions est un aspect tactique important.

## 4. Types de Dégâts et Capacités d'Outils

Le système de dégâts est nuancé, inspiré des `ToolCapacityDef` et `DamageDef` de RimWorld, permettant des effets distincts selon le type d'attaque. Ces définitions sont implémentées comme des [Custom Resources Godot](../../verite_unique/glossaire.md#custom-resource-godot).

**Tableau 1 : Exemples de Capacités d'Outils et de Dégâts**

| Capacité d'Outil | Type de Définition | Description (GuildForge) |
| :--- | :--- | :--- |
| `Blunt` (Contusion) | `DamageDef_Blunt` | Réduit l'efficacité de l'armure lourde, chance d'étourdir, cause des ecchymoses et des fractures. Idéal contre les ennemis lourdement blindés. |
| `Cut` (Coupure) | `DamageDef_Cut` | Dégâts élevés contre la chair, chance de provoquer des saignements (hémorragies), peut sectionner des membres. Efficace contre les cibles peu ou pas protégées. |
| `Stab` (Perforation) | `DamageDef_Stab` | Ignore une partie de l'armure, dégâts précis aux organes, peut perforer des organes vitaux. Très efficace contre les armures intermédiaires. |
| `Scratch` (Égratignure) | `DamageDef_Scratch` | Dégâts légers, peut causer des égratignures et des infections mineures. Souvent infligé par des animaux de petite taille. |
| `Bite` (Morsure) | `DamageDef_Bite` | Dégâts modérés, risque d'infection et de maladies transmises par les animaux. Typique des attaques de bêtes sauvages. |

Chaque capacité aura des modificateurs spécifiques contre différents types d'armures ou de créatures. Les `DamageDef` spécifient les effets précis du dégât (ex: `DamageDef_Blunt` peut causer des ecchymoses, `DamageDef_Cut` des saignements), influençant directement le système de [santé et blessures](../03_systeme_personnages/04_sante_et_blessures.md).

## 5. Effets de Statut et Blessures Localisées

Les `HediffDef` (effets de statut) et `BodyPartDef` (définitions de parties du corps) sont cruciaux pour modéliser les blessures, les maladies et les effets de statut dans un cadre strictement médiéval [1]. Ces définitions sont également des [Custom Resources Godot](../../verite_unique/glossaire.md#custom-resource-godot).

*   **Localisation des Blessures :** Les `BodyPartDef` permettent de localiser précisément les effets des dégâts. Par exemple, une blessure à la jambe réduira la vitesse de déplacement du colon, tandis qu'une blessure à l'œil pourra entraîner une perte de précision au tir.
*   **Conditions Médicales :** Une infection (`HediffDef_Infection`) nécessitera des soins médicaux spécifiques. Les `HediffDef` peuvent inclure des stades (`stages`) qui modifient les effets au fil du temps, comme l'aggravation d'une maladie ou la guérison progressive d'une blessure. Ces effets sont gérés par le système de [santé et blessures](../03_systeme_personnages/04_sante_et_blessures.md).
*   **Réalisme Médiéval :** Tous les `HediffDef` et `BodyPartDef` sont conçus pour refléter la réalité médicale et les connaissances de l'époque médiévale, excluant tout élément fantastique ou de science-fiction, renforçant l'immersion.

## 6. Références

[1] [Santé et Blessures des Personnages](../03_systeme_personnages/04_sante_et_blessures.md)
[2] [Équipement et Armement](./02_equipement_et_armement.md)
[3] [Compétences et Traits des Personnages](../03_systeme_personnages/02_compétences_et_traits.md)
*   [README du Système de Combat](./README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

