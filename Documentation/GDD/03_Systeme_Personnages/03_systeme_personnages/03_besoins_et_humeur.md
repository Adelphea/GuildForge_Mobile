# Besoins et Humeur des Personnages - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [game-design, personnages, besoins, humeur, moral, productivité, survie, médiéval]

Ce document décrit les **besoins fondamentaux** des personnages (faim, sommeil, confort, hygiène, etc.) et comment leur satisfaction ou insatisfaction influence leur humeur, leurs pensées et leur comportement dans GuildForge Mobile. La gestion de ces besoins est cruciale pour maintenir la productivité et la survie de la colonie, s'inscrivant dans le cadre plus large du [cycle de vie des personnages](./07_cycle_de_vie.md).

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Principes Généraux](#2-principes-généraux)
3.  [Besoins Fondamentaux (NeedDef)](#3-besoins-fondamentaux-needdef)
4.  [Pensées et Humeur (ThoughtDef)](#4-pensées-et-humeur-thoughtdef)
5.  [Interactions et Conséquences](#5-interactions-et-conséquences)
6.  [Gestion par le Joueur](#6-gestion-par-le-joueur)
7.  [Intégration Technique](#7-intégration-technique)
8.  [Références](#8-références)

---

## 1. Introduction

La gestion des besoins et de l'humeur des colons est un aspect central de GuildForge Mobile, influençant directement leur efficacité, leur santé et leur bien-être général. Inspiré par des systèmes de simulation de survie complexes, ce module intègre des mécaniques détaillées pour chaque besoin, ancrées dans le contexte médiéval du jeu. L'objectif est de créer des personnages crédibles et réactifs aux conditions de vie de la colonie.

## 2. Principes Généraux

Chaque colon possède un ensemble de besoins qui doivent être régulièrement satisfaits. La non-satisfaction de ces besoins entraîne des malus d'humeur, pouvant mener à des comportements négatifs (paresse, querelles, dépressions, etc.). À l'inverse, la satisfaction des besoins contribue positivement à l'humeur et à la productivité. L'humeur générale d'un colon est une moyenne pondérée de la satisfaction de ses différents besoins et des pensées générées par les événements.

## 3. Besoins Fondamentaux (`NeedDef`)

Les `NeedDef` (définitions de besoins) sont des [Custom Resources Godot](../../verite_unique/glossaire.md#custom-resource-godot) qui spécifient les exigences vitales des colons. L'analyse des XML a révélé l'existence de `NeedDef` spécifiques comme `Thirst` et `Bladder` provenant de mods, ce qui souligne la modularité du système. Le tableau ci-dessous présente des exemples de besoins fondamentaux et leur description dans le contexte de GuildForge Mobile.

**Tableau 1 : Exemples de Besoins (`NeedDef`) et leur description**

| Type de Définition | Catégorie | Description (GuildForge) |
| :--- | :--- | :--- |
| `NeedDef` | `Faim` | Le colon doit manger pour remplir ce besoin. La disponibilité et la qualité de la nourriture influencent également l'humeur. |
| `NeedDef` | `Soif` | Le colon doit boire de l'eau pour remplir ce besoin. La gestion de l'eau potable (puits, sources, filtration rudimentaire) est cruciale pour la santé de la colonie. |
| `NeedDef` | `Sommeil` | Le colon doit dormir pour remplir ce besoin. La qualité du lieu de repos (lit, chambre privée) impacte la récupération et l'humeur. |
| `NeedDef` | `Hygiène` | Le colon doit maintenir une certaine propreté. Cela implique l'accès à des installations rudimentaires comme des lavoirs ou des baquets d'eau. Une mauvaise hygiène peut entraîner des maladies. |
| `NeedDef` | `Vessie` | Le colon doit soulager ses besoins naturels. Des latrines simples ou des zones dédiées sont nécessaires pour gérer ce besoin et éviter la propagation de maladies. |
| `NeedDef` | `Divertissement` | Le colon doit se divertir pour remplir ce besoin. Des activités récréatives (jeux, musique, socialisation) sont essentielles pour le moral. |
| `NeedDef` | `Environnement` | Le colon est influencé par la qualité esthétique et la propreté de son environnement. Un environnement agréable améliore l'humeur. |
| `NeedDef` | `Extérieur` | Le colon a besoin de passer du temps à l'extérieur. Une exposition prolongée à l'intérieur peut générer un malus d'humeur. |
| `NeedDef` | `Humeur` | Moyenne globale de tous les besoins réunis, ainsi que des pensées, pour informer de l'état général du colon. |

## 4. Pensées et Humeur (`ThoughtDef`)

Les `ThoughtDef` (définitions de pensées) génèrent des modificateurs d'humeur basés sur les événements du jeu et la satisfaction des besoins. Ces pensées peuvent être positives ou négatives, influençant directement le moral général du colon. Elles sont dynamiques et reflètent les expériences vécues par le personnage.

**Tableau 2 : Exemples de Pensées (`ThoughtDef`) et leur impact**

| Type de Définition | Description (GuildForge) |
| :--- | :--- |
| `ThoughtDef` | `DrankCleanWater` : Humeur positive après avoir bu de l'eau propre et rafraîchissante. |
| `ThoughtDef` | `DrankDirtyWater` : Humeur négative après avoir bu de l'eau sale, pouvant entraîner des maladies. |
| `ThoughtDef` | `WashPrivacy` : Humeur positive si l'hygiène est effectuée en privé, respectant l'intimité du colon. |
| `ThoughtDef` | `ToiletPrivacy` : Humeur positive si l'utilisation des toilettes est effectuée en privé, contribuant au confort. |
| `ThoughtDef` | `AteGoodMeal` : Humeur positive après un repas de qualité, bien préparé et nourrissant. |
| `ThoughtDef` | `SleptWell` : Humeur positive après une bonne nuit de sommeil dans un lit confortable. |
| `ThoughtDef` | `WitnessedDeath` : Humeur négative après avoir été témoin de la mort d'un autre colon ou d'un animal. |
| `ThoughtDef` | `LostFriend` : Humeur très négative suite à la perte d'un ami proche ou d'un membre de la famille. |

## 5. Interactions et Conséquences

Les besoins des colons interagissent constamment entre eux et avec l'environnement. Par exemple, une mauvaise hygiène peut entraîner des maladies, qui à leur tour affectent la santé et l'humeur. La satisfaction d'un besoin peut influencer positivement d'autres besoins (ex: un bon repas améliore l'humeur et réduit la faim). La non-satisfaction prolongée des besoins peut mener à des crises de nerfs, des comportements erratiques, ou une baisse drastique de la productivité, pouvant aller jusqu'à la fuite ou la folie.

## 6. Gestion par le Joueur

Le joueur doit mettre en place des infrastructures et des routines pour satisfaire les besoins de ses colons. Cela inclut la construction de cuisines, de dortoirs, de lavoirs, de latrines, ainsi que la gestion des ressources (nourriture, eau) et l'organisation d'activités de divertissement. Des outils d'interface utilisateur clairs permettront de surveiller l'état des besoins et de l'humeur de chaque colon, afin de prendre des décisions éclairées pour le bien-être de la colonie.

## 7. Intégration Technique

*   **`NeedManager` :** Un module dédié gérera le suivi et la mise à jour des besoins de chaque colon, calculant leur niveau de satisfaction et leur impact sur l'humeur.
*   **`ThoughtProcessor` :** Ce composant évaluera les conditions du colon et de son environnement pour générer les `ThoughtDef` appropriés, qui modifieront l'humeur. Il prendra en compte les événements, les interactions sociales et l'état des besoins.
*   **Dépendances :** Le système de besoins est lié au [README du Système Personnages](./README.md), au [système d'objets](../05_systeme_ressources_et_production/05_catalogue_objets.md) (nourriture, lits, divertissements) et au [système d'événements aléatoires](../02_systeme_conteur_ia/02_evenements_aleatoires.md) (crises de nerfs).
*   **Configuration :** Les besoins et les pensées devront être définis comme [Custom Resources Godot](../../verite_unique/glossaire.md#custom-resource-godot) pour faciliter leur configuration, leur équilibrage et leur extension via des mods.

## 8. Références

*   [README du Game Design](../../game_design/README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)
*   [Création et Historique des Personnages](./01_creation_et_historique.md)
*   [Cycle de Vie](./07_cycle_de_vie.md)
*   [Gestion des Données Godot](../../verite_unique/gestion_donnees_godot.md)

