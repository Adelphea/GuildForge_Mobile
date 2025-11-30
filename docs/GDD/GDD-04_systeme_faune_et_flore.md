---
title: "GDD-04 : Système Faune et Flore"
version: 1.0
date: 2025-11-30
auteur: Architecte de Game Design et Spécialiste de l'Émergence (AGDSE)
tags: [game-design, faune, flore, écosystème, ressources, survie]
---

# GDD-04 : Système Faune et Flore

Ce document consolide les spécifications de *game design* pour la faune (animaux sauvages et domestiques) et la flore (plantes sauvages et cultures) du monde de GuildForge Mobile. Ces systèmes sont cruciaux pour la survie, la production de ressources et l'émergence de scénarios de jeu.

---

## Table des Matières

I. Introduction et Principes de Design
II. Faune : Animaux Sauvages et Domestiques
    II.1. Animaux Sauvages (Gibier et Prédateurs)
    II.2. Animaux Domestiques (Élevage et Travail)
    II.3. Mécaniques d'Interaction (Chasse et Domestication)
III. Flore : Plantes Sauvages et Cultures
    III.1. Plantes Sauvages (Comestibles, Médicinales, Industrielles)
    III.2. Cultures Agricoles (Céréales, Légumes, Fruits)
    III.3. Interactions Écosystémiques

---

## I. Introduction et Principes de Design

Le système Faune et Flore est conçu pour être une source dynamique de défis et de ressources, renforçant le thème de la survie et de la gestion de colonie.

**Principe de Design AGDSE :** L'écosystème doit être une source de **boucles de feedback émergentes**. Par exemple, la surchasse réduit la population de gibier, forçant les colons à s'aventurer plus loin ou à se tourner vers l'agriculture, ce qui augmente le risque de rencontre avec des prédateurs attirés par le bétail.

## II. Faune : Animaux Sauvages et Domestiques

La faune est divisée en deux catégories principales, chacune ayant un impact direct sur la survie et l'économie de la colonie.

### II.1. Animaux Sauvages (Gibier et Prédateurs)

Les animaux sauvages sont des éléments dynamiques de l'environnement, offrant des ressources mais représentant également des menaces.

| Catégorie | Exemples | Rôle de Design | Risque pour la Colonie |
| :--- | :--- | :--- | :--- |
| **Gibier** | Cerfs, lapins, sangliers | Source de nourriture et de matériaux (viande, cuir, fourrure). | Faible. Peut consommer les cultures non protégées. |
| **Prédateurs** | Loups, ours, grands félins | Source de défis et de ressources rares. | Élevé. Attaques directes sur colons et bétail. |

**Mécanique de l'Émergence :** La présence de prédateurs est influencée par la population de gibier. Une faible population de gibier peut pousser les prédateurs à s'approcher de la colonie.

### II.2. Animaux Domestiques (Élevage et Travail)

Les animaux domestiques sont des actifs de production qui nécessitent une gestion active (soins, abris, nourriture).

| Catégorie | Exemples | Rôle de Design | Ressources/Fonctions |
| :--- | :--- | :--- | :--- |
| **Élevage** | Vaches, moutons, poulets | Production stable de ressources renouvelables. | Lait, œufs, laine, viande, cuir. |
| **Travail** | Chevaux, bœufs | Augmentation de l'efficacité logistique et agricole. | Transport de ressources, labour des champs. |

**Exigence de Gameplay :** La gestion des animaux domestiques nécessite la compétence **Animaux** des colons et des infrastructures spécifiques (pâturages, abris).

### II.3. Mécaniques d'Interaction (Chasse et Domestication)

| Mécanique | Compétence Clé | Risque de Design | Bénéfice de Design |
| :--- | :--- | :--- | :--- |
| **Chasse** | Tir ou Mêlée | Blessures ou mort du colon (chasse aux prédateurs). | Approvisionnement immédiat en ressources. |
| **Domestication** | Animaux | Échec du dressage, perte de ressources. | Accès à des ressources renouvelables et à l'aide au travail. |

## III. Flore : Plantes Sauvages et Cultures

La flore est la base de la subsistance de la colonie, fournissant nourriture, matériaux de construction et ingrédients médicinaux.

### III.1. Plantes Sauvages (Comestibles, Médicinales, Industrielles)

Les plantes sauvages sont des ressources de cueillette qui dépendent du biome et de la saison.

| Catégorie | Rôle de Design | Exemples | Utilisation |
| :--- | :--- | :--- | :--- |
| **Comestibles** | Complément alimentaire, survie d'urgence. | Baies, champignons, racines. | Consommation directe, cuisine. |
| **Médicinales** | Soins de base, réduction des infections. | Herbes antiseptiques/analgésiques. | Fabrication de remèdes et d'onguents. |
| **Industrielles** | Matériaux bruts pour l'artisanat. | Lin, chanvre, roseaux. | Vêtements, cordages, construction légère. |
| **Arbres** | Source principale de construction et de combustible. | Chênes, pins, bouleaux. | Bois de construction, chauffage. |

### III.2. Cultures Agricoles (Céréales, Légumes, Fruits)

L'agriculture est la source de nourriture la plus stable, mais elle est vulnérable aux saisons, aux maladies et aux ravageurs.

**Exigence de Gameplay :** Les cultures nécessitent un sol fertile, un labourage, un semis, une récolte et un stockage. La **Saisonnalité** est un facteur critique de *game design* (planification des récoltes, stockage pour l'hiver).

| Type de Culture | Rôle de Design | Exemples | Cycle de Croissance |
| :--- | :--- | :--- | :--- |
| **Céréales** | Base de l'alimentation (pain, bière). | Blé, orge, seigle. | Long (saisonnier). |
| **Légumes** | Nutriments essentiels, stockage hivernal. | Carottes, choux, pommes de terre. | Moyen (plusieurs récoltes possibles). |
| **Fruits** | Source de sucre, luxe, commerce. | Pommes, poires, baies cultivées. | Long (arbres fruitiers) ou court (buissons). |

### III.3. Interactions Écosystémiques

*   **Impact Environnemental :** La déforestation et l'agriculture intensive réduisent la fertilité des sols et peuvent affecter l'équilibre faunique (moins de gibier, plus de prédateurs près de la colonie).
*   **Dangers :** Certaines plantes sauvages sont toxiques et peuvent causer des maladies si elles sont consommées par erreur.
*   **Maladies des Cultures :** Les cultures sont sujettes aux maladies et aux ravageurs, nécessitant une gestion active (rotation des cultures, pesticides naturels).

---

## V. Références

[1] [GDD-03 : Système Personnages](../GDD-03_systeme_personnages.md)
[2] [TDD-02 : Architecture des Systèmes de Base](../TDD/TDD-02_architecture_des_systemes_de_base.md)
[3] [TDD-04 : Spécifications des Systèmes de Jeu](../TDD/TDD-04_specifications_des_systemes_de_jeu.md)
[4] [GDD-01 : Système Monde](../GDD-01_systeme_monde.md)
[5] [GDD-06 : Système Ressources et Production](../GDD-06_systeme_ressources_et_production.md)
[6] [GDD-08 : Système Combat](../GDD-08_systeme_combat.md)
[7] [GDD-05 : Système Construction](../GDD-05_systeme_construction.md)
[8] [GDD-09 : Système Économie et Commerce](../GDD-09_systeme_economie_et_commerce.md)
[9] [GDD-07 : Système Recherche et Progression](../GDD-07_systeme_recherche_et_progression.md)
[10] [GDD-12 : Système Interface et UX](../GDD-12_systeme_interface_et_ux.md)
[11] [PMD/conventions_generales.md](../PMD/conventions_generales.md)
[12] [PMD/conventions_techniques.md](../PMD/conventions_techniques.md)
[13] [TDD-01 : Architecture de Données](../TDD/TDD-01_architecture_de_donnees.md)
[14] [TDD-03 : Gestion des Actifs et Intégration](../TDD/TDD-03_gestion_des_actifs_et_integration.md)
[15] [TDD-05 : Opérations, Performance et Extensibilité](../TDD/TDD-05_operations_performance_et_extensibilite.md)
[16] [TDD-FINAL : Validation](../TDD/TDD-FINAL_validation.md)
[17] [README du Projet](../../README.md)
[18] [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)
[19] [CONTRIBUTING.md](../../CONTRIBUTING.md)
[20] [TREE.md](../../TREE.md)
[21] [agent_state.md](../../agent_state.md)
