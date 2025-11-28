# Artisanat et Fabrication - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [game-design, artisanat, fabrication, production, recettes, ateliers, compétences, qualité, médiéval]

Ce document détaille les processus d'**artisanat** et de **fabrication** dans GuildForge Mobile, incluant les recettes, les ateliers, les compétences requises et la qualité des objets produits. Il explique comment les colons transforment les ressources brutes en objets utiles, équipements et structures, contribuant ainsi au développement et à la survie de la colonie. Ce système est un pilier central de l'économie et de la progression de la colonie.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Principes de l'Artisanat](#2-principes-de-lartisanat)
    *   [Établis](#21-établis)
    *   [Compétences](#22-compétences)
    *   [Recettes](#23-recettes)
    *   [Qualité](#24-qualité)
3.  [Processus de Fabrication](#3-processus-de-fabrication)
4.  [Catégories d'Objets Fabricables](#4-catégories-dobjets-fabricables)
5.  [Système de Recherche (Connaissances)](#5-système-de-recherche-connaissances)
6.  [Références](#6-références)

---

## 1. Introduction

Le système d'artisanat et de fabrication est un maillon essentiel de la chaîne de production de GuildForge Mobile. Il permet aux colons de transformer les [ressources collectées et produites](./01_collecte_et_extraction.md) en biens de consommation, outils, armes, armures et éléments de construction. Ce système est étroitement lié à la [collecte de ressources](./01_collecte_et_extraction.md), aux [compétences des colons](../03_systeme_personnages/02_competences_et_traits.md) et au [système de recherche](../06_systeme_recherche_et_progression/README.md), offrant une profondeur stratégique à la gestion de la colonie. Une maîtrise de l'artisanat est indispensable pour l'autonomie et la prospérité.

## 2. Principes de l'Artisanat

L'artisanat dans GuildForge Mobile repose sur plusieurs principes fondamentaux qui régissent la production d'objets, de la matière première au produit fini.

### 2.1. Établis

La plupart des recettes d'artisanat nécessitent un **établi spécifique** pour être réalisées. Ces établis sont des [structures construites](../04_systeme_construction/01_structures_et_mobilier.md) par les colons et dédiées à des types de production particuliers. On trouve par exemple la forge pour le travail du métal, l'atelier de menuiserie pour le bois, la cuisine pour la préparation des repas, et la table de recherche pour les avancées technologiques [1]. Chaque établi peut avoir des prérequis en termes de [technologie](../06_systeme_recherche_et_progression/01_arbre_technologique_medieval.md) ou de [ressources](../05_systeme_ressources_et_production/01_collecte_et_extraction.md).

### 2.2. Compétences

Les colons avec des **compétences d'artisanat pertinentes** sont plus efficaces et produisent des objets de meilleure qualité. Par exemple, un colon avec une compétence élevée en **Artisanat** sera plus apte à fabriquer des outils de qualité, tandis qu'un bon **Cuisinier** préparera des repas plus nutritifs et savoureux [2]. La compétence du colon influence directement la vitesse de fabrication, le coût en ressources et la qualité finale de l'objet.

### 2.3. Recettes

Chaque objet fabricable est associé à une **recette** qui spécifie les matériaux requis, les outils nécessaires et l'établi où la fabrication doit avoir lieu. Les recettes sont débloquées par la [recherche](../06_systeme_recherche_et_progression/01_arbre_technologique_medieval.md) ou la découverte ([inspiration et découvertes](../06_systeme_recherche_et_progression/02_inspiration_et_decouvertes.md)). Certaines recettes peuvent être secrètes et nécessiter une exploration ou des interactions spécifiques pour être acquises.

### 2.4. Qualité

La **qualité** de l'objet fabriqué dépend de plusieurs facteurs : la compétence du colon, la qualité des matériaux utilisés et l'état de l'établi. Un objet de meilleure qualité aura de meilleures statistiques (par exemple, plus de dégâts pour une arme, plus de protection pour une armure) ou une plus grande durabilité, augmentant ainsi sa valeur et son utilité. La qualité est un facteur clé pour le [moral des colons](../03_systeme_personnages/03_besoins_et_humeur.md) et la [valeur marchande](../08_systeme_economie_et_commerce/01_marche_et_valeurs.md).

## 3. Processus de Fabrication

Le processus de fabrication suit une série d'étapes logiques, de la décision de produire à la mise en stock du produit fini, géré par le [système de gestion des tâches](../03_systeme_personnages/08_gestion_quotidienne.md).

1.  **Sélection de la Recette :** Le joueur choisit un objet à fabriquer à partir d'une liste de recettes disponibles à un établi spécifique via l'interface utilisateur.
2.  **Assignation du Colon :** Un colon avec la compétence requise est assigné à la tâche de fabrication. Le [système de gestion des tâches](../03_systeme_personnages/08_gestion_quotidienne.md) [3] permet d'optimiser cette assignation en fonction des priorités et des compétences.
3.  **Collecte des Matériaux :** Le colon collecte les ressources nécessaires depuis les [zones de stockage](./04_gestion_des_stocks.md) [4]. Si les matériaux ne sont pas disponibles, la tâche est mise en attente.
4.  **Fabrication :** Le colon utilise l'établi et les outils pour fabriquer l'objet. Le temps de fabrication dépend de la complexité de l'objet et de la compétence du colon. Des événements aléatoires peuvent survenir pendant la fabrication (réussite critique, échec, inspiration).
5.  **Stockage :** L'objet fini est transporté vers une [zone de stockage appropriée](./04_gestion_des_stocks.md) [5], où il sera disponible pour l'utilisation, la vente ou l'équipement.

## 4. Catégories d'Objets Fabricables

Le système d'artisanat permet de fabriquer une large gamme d'objets essentiels à la colonie, couvrant tous les aspects de la vie quotidienne et de la survie :

*   **Outils :** Haches, pioches, marteaux, faucilles, cannes à pêche.  Pour effectué plus rapidement la [collecte de ressources](./01_collecte_et_extraction.md) et l'efficacité des tâches. Leur durabilité et leur efficacité varient selon la qualité.
*   **Armes :** Épées, lances, arcs, arbalètes. Decisif pour la chasse et la [défense de la colonie](../07_systeme_combat/04_defense_de_la_colonie.md) [6]. La qualité de l'arme affecte les dégâts et la précision.
*   **Armures et Vêtements :** Tuniques, armures de cuir, cottes de mailles. Protègent les colons des menaces et des intempéries. La qualité influence la protection et le [confort thermique](../04_systeme_construction/03_temperature_et_confort.md) [6].
*   **Mobilier et Structures :** Lits, tables, chaises, murs, portes. Contribuent au confort et à la protection de la colonie [1]. La qualité du mobilier peut influencer le [moral des colons](../03_systeme_personnages/03_besoins_et_humeur.md).
*   **Nourriture Transformée :** Pain, ragoûts, boissons. Améliorent la satisfaction des [besoins des colons](../03_systeme_personnages/03_besoins_et_humeur.md) et peuvent offrir des bonus temporaires. La qualité de la nourriture affecte le moral.
*   **Objets de Soin :** Bandages, remèdes à base de plantes. Essentiels pour la gestion de la [santé et des blessures](../03_systeme_personnages/04_sante_et_blessures.md) [7].

## 5. Système de Recherche (Connaissances)

Le système de recherche est intrinsèquement lié à l'artisanat, car il permet de débloquer de nouvelles recettes, des technologies de construction avancées et des améliorations pour les établis [8]. Les colons avec la [compétence **Intellectuel**](../03_systeme_personnages/02_competences_et_traits.md) peuvent travailler à une table de recherche pour générer des points de connaissance, progressant ainsi dans un [arbre technologique](../06_systeme_recherche_et_progression/01_arbre_technologique_medieval.md). Chaque projet de recherche nécessite un certain nombre de points de connaissance et peut avoir des prérequis (ex: un certain niveau de compétence, un bâtiment spécifique).

## 6. Références

[1] [Structures et Mobilier](../04_systeme_construction/01_structures_et_mobilier.md)
[2] [Compétences et Traits des Personnages](../03_systeme_personnages/02_competences_et_traits.md)
[3] [Gestion Quotidienne des Personnages](../03_systeme_personnages/08_gestion_quotidienne.md)
[4] [Collecte et Extraction de Ressources](./01_collecte_et_extraction.md)
[5] [Gestion des Stocks](./04_gestion_des_stocks.md)
[6] [Équipement et Inventaire des Personnages](../03_systeme_personnages/06_equipement_et_inventaire.md)
[7] [Santé et Blessures des Personnages](../03_systeme_personnages/04_sante_et_blessures.md)
[8] [Système de Recherche et Progression](../06_systeme_recherche_et_progression/README.md)
*   [README du Système de Ressources et Production](./README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

