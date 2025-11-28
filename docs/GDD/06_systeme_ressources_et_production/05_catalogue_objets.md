# Catalogue des Objets - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.1
**Tags :** [game-design, objets, inventaire, ressources, équipement, artisanat, commerce, médiéval]

Ce document liste et décrit tous les objets du jeu GuildForge Mobile, leurs propriétés, leurs utilisations et leurs interactions avec les autres systèmes (artisanat, commerce, équipement). Il sert de référence centralisée pour la conception et la gestion de tous les éléments interactifs du monde, assurant cohérence et profondeur au gameplay.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Structure d'un Objet (ItemDef)](#2-structure-dun-objet-itemdef)
3.  [Catégories d'Objets](#3-catégories-dobjets)
    *   [Ressources Brutes](#31-ressources-brutes)
    *   [Matériaux Transformés](#32-matériaux-transformés)
    *   [Outils](#33-outils)
    *   [Armes](#34-armes)
    *   [Armures et Vêtements](#35-armures-et-vêtements)
    *   [Nourriture](#36-nourriture)
    *   [Objets de Soin](#37-objets-de-soin)
    *   [Objets de Valeur / Commerce](#38-objets-de-valeur--commerce)
4.  [Acquisition et Fabrication](#4-acquisition-et-fabrication)
5.  [Intégration avec d'Autres Systèmes](#5-intégration-avec-dautres-systèmes)
6.  [Références](#6-références)

---

## 1. Introduction

Le catalogue des objets est une composante essentielle de GuildForge Mobile, fournissant une vue d'ensemble des différents types d'objets que les colons peuvent collecter, produire, utiliser ou échanger. Inspiré par des systèmes comme les `ThingDef` de RimWorld, ce document établit les principes de conception pour la création et la gestion des objets, dont les définitions détaillées sont gérées via les Resources Godot.

## 2. Structure d'un Objet (ItemDef)

Chaque objet est défini par une `ItemDef` (Godot Custom Resource) [1] qui inclut les propriétés suivantes :

*   **ID (`defName`) :** Identifiant unique de l'objet pour la référence interne.
*   **Nom (`label`) :** Nom affiché dans le jeu pour le joueur.
*   **Description :** Texte descriptif de l'objet, fournissant des informations sur son origine, son utilité ou son histoire.
*   **Catégorie :** Type d'objet (ex: Nourriture, Outil, Arme, Matériau, Vêtement), permettant un regroupement logique.
*   **Poids :** Influence la capacité de transport des colons et des caravanes [2].
*   **Valeur :** Prix de base pour le commerce, influencé par la rareté et la demande [3].
*   **Stackable :** Indique si l'objet peut être empilé dans l'inventaire ou les zones de stockage [4].
*   **Qualité :** Influence les statistiques de l'objet (ex: Durabilité, Efficacité, Dégâts) [5].
*   **Durabilité :** Indique la résistance de l'objet à l'usure et aux dégâts.
*   **Périssable :** Indique si l'objet peut se détériorer avec le temps et les conditions de stockage [4].

## 3. Catégories d'Objets

Les objets sont regroupés en catégories fonctionnelles pour faciliter leur gestion et leur compréhension.

### 3.1. Ressources Brutes

*   **Description :** Matériaux collectés directement dans l'environnement ou produits de base, non transformés.
*   **Exemples :** Bois, Pierre, Minerai de fer, Argile, Coton, Blé, Viande crue.

### 3.2. Matériaux Transformés

*   **Description :** Ressources brutes qui ont été traitées ou raffinées par l'artisanat.
*   **Exemples :** Planches de bois, Lingots de fer, Tissu, Farine, Cuir.

### 3.3. Outils

*   **Description :** Objets utilisés par les colons pour effectuer des tâches spécifiques, améliorant leur efficacité.
*   **Exemples :** Hache (coupe d'arbres), Pioche (minage), Marteau (construction), Faucille (récolte), Canne à pêche.

### 3.4. Armes

*   **Description :** Objets utilisés pour le combat, la chasse et la défense de la colonie.
*   **Exemples :** Épée, Hache de guerre, Arc, Lance, Bouclier.

### 3.5. Armures et Vêtements

*   **Description :** Objets portés par les colons pour la protection contre les dégâts, les intempéries et pour le confort.
*   **Exemples :** Tunique, Pantalon, Casque en cuir, Cuirasse en fer, Robe en lin.

### 3.6. Nourriture

*   **Description :** Objets consommables pour satisfaire la faim des colons et influencer leur moral.
*   **Exemples :** Pain, Viande cuite, Légumes, Fruits, Ragoût.

### 3.7. Objets de Soin

*   **Description :** Objets utilisés pour traiter les blessures et maladies des colons.
*   **Exemples :** Herbes médicinales, Bandages, Attelles, Antiseptiques rudimentaires.

### 3.8. Objets de Valeur / Commerce

*   **Description :** Objets principalement destinés au commerce ou ayant une grande valeur esthétique ou monétaire.
*   **Exemples :** Pièces d'or, Bijoux, Œuvres d'art, Épices rares.

## 4. Acquisition et Fabrication

Les objets peuvent être acquis de diverses manières, chacune étant intégrée aux systèmes de jeu :

*   **Collecte :** Objets obtenus en interagissant avec l'environnement (couper des arbres, miner, chasser) [6].
*   **Fabrication :** Objets créés par les colons dans des ateliers spécifiques, nécessitant des matériaux et des compétences [5].
*   **Commerce :** Objets achetés ou vendus à des factions ou des marchands itinérants [3].
*   **Pillage :** Objets récupérés sur des ennemis vaincus ou dans des ruines.

## 5. Intégration avec d'Autres Systèmes

Le catalogue des objets est intrinsèquement lié à de nombreux autres systèmes du jeu :

*   **Inventaire et Stocks :** Géré par le système d'inventaire des colons et des entrepôts [4].
*   **Artisanat et Fabrication :** Les objets sont les intrants et les extrants du système d'artisanat [5].
*   **Commerce et Économie :** Les objets sont la monnaie d'échange et la base de l'économie [3].
*   **Combat :** Les armes et armures sont utilisées dans le système de combat [7].
*   **Santé :** Les objets de soin sont utilisés dans le système de santé [8].
*   **Équipement des Personnages :** Les armes, armures et vêtements sont équipés par les colons [9].

## 6. Références

[1] [Gestion des Données Godot](../../verite_unique/gestion_donnees_godot.md)
[2] [Voyages et Caravanes](../01_systeme_monde/04_voyages_et_caravanes.md)
[3] [Système d'Économie et Commerce](../08_systeme_economie_et_commerce/README.md)
[4] [Gestion des Stocks](./04_gestion_des_stocks.md)
[5] [Artisanat et Fabrication](./03_artisanat_et_fabrication.md)
[6] [Collecte et Extraction de Ressources](./01_collecte_et_extraction.md)
[7] [Système de Combat](../07_systeme_combat/README.md)
[8] [Santé et Blessures des Personnages](../03_systeme_personnages/04_sante_et_blessures.md)
[9] [Équipement et Inventaire des Personnages](../03_systeme_personnages/06_equipement_et_inventaire.md)
*   [README du Game Design](../../game_design/README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

