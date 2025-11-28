# Structures et Mobilier - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [game-design, construction, structures, mobilier, bâtiments, matériaux, fonctions, médiéval]

Ce document décrit les différents types de **structures** (murs, toits, portes) et de **mobilier** (lits, tables, chaises, ateliers) disponibles pour la construction dans GuildForge Mobile. Il détaille leurs matériaux, leurs coûts, leurs fonctions et leur rôle dans la survie, la production et le confort de la colonie. Le système de construction est un pilier central du jeu, permettant aux joueurs de façonner leur environnement et de répondre aux besoins de leur colonie.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Mécaniques de Bâtiment](#2-mécaniques-de-bâtiment)
    *   [Structures](#21-structures)
    *   [Mobilier et Équipement](#22-mobilier-et-équipement)
    *   [Défenses](#23-défenses)
3.  [Catalogue des Bâtiments](#3-catalogue-des-bâtiments)
    *   [Catégories de Bâtiments](#31-catégories-de-bâtiments)
    *   [Acquisition et Amélioration](#32-acquisition-et-amélioration)
4.  [Interactions et Dépendances](#4-interactions-et-dépendances)
5.  [Références](#5-références)

---

## 1. Introduction

Le système de construction est un pilier de GuildForge Mobile, permettant aux joueurs de concevoir, bâtir et aménager leur colonie. Il offre une flexibilité pour créer des abris, des zones de production, des défenses et des aménagements pour le bien-être des colons, tout en étant optimisé pour l'environnement mobile. Ce document centralise les informations sur les éléments constructibles, en s'intégrant aux systèmes de [gestion des colons](../03_systeme_personnages/README.md) et de [ressources](../05_systeme_ressources_et_production/README.md).

## 2. Mécaniques de Bâtiment

Le système de construction est accessible via l'onglet Architecte de l'interface utilisateur principale. Il permet de placer des éléments sur la carte, de définir des zones et de donner des ordres de construction ou de modification du terrain. Les colons dotés de la [compétence Construction](../03_systeme_personnages/02_competences_et_traits.md) sont responsables de l'exécution de ces tâches.

### 2.1. Structures

Les structures sont les éléments fondamentaux de la base, offrant protection et délimitant les espaces. Elles peuvent être construites avec divers matériaux offrant différentes résistances et valeurs esthétiques. La durabilité et la résistance aux éléments (feu, attaques) varient selon le matériau utilisé.

**Tableau 1 : Exemples de Structures de Base**

| Structure | Matériaux (Exemples) | Coût (Exemples) | Prérequis (Exemples) | Fonction Spécifique |
| :--- | :--- | :--- | :--- | :--- |
| **Mur en Bois** | Bois (10) | 10 Bois | Aucun | Délimite les pièces, protection de base contre les éléments et les menaces mineures. |
| **Mur en Pierre** | Pierre (15) | 15 Pierre | Technologie "Maçonnerie" | Protection améliorée, résistance au feu et aux attaques plus importantes. |
| **Porte Simple** | Bois (5) | 5 Bois | Aucun | Permet le passage des colons et des visiteurs, faible résistance aux intrusions. |
| **Porte Blindée** | Métal (10), Bois (5) | 10 Métal, 5 Bois | Connaissances "Métallurgie" | Haute résistance, ralentit les ennemis et offre une meilleure sécurité. |
| **Toit** | Bois (5) | 5 Bois | Murs adjacents | Protège des intempéries (pluie, neige), maintient la température intérieure et prévient la dégradation des objets. |
| **Sol en Terre Cuite** | Argile (5) | 5 Argile | Technologie "Poterie" | Améliore l'esthétique et la propreté des intérieurs, contribuant au moral des colons. |

### 2.2. Mobilier et Équipement

Le mobilier et l'équipement améliorent le confort des colons, augmentent la productivité ou fournissent des loisirs. Leur qualité et leur emplacement influencent directement le [moral et les besoins des personnages](../03_systeme_personnages/03_besoins_et_humeur.md).

*   **Lits :** Essentiels pour le repos des colons. Différents types (sacs de couchage, lits simples, lits doubles, lits royaux) influencent le confort, la qualité du repos et la récupération de l'humeur.
*   **Tables et Chaises :** Nécessaires pour manger confortablement, améliorant l'humeur des colons. Manger par terre ou sans table peut entraîner des malus de moral.
*   **Établis de Production :** Permettent aux colons de fabriquer des objets (forge, couture, cuisine, recherche). Chaque établi est associé à des recettes spécifiques et nécessite des [compétences particulières](../03_systeme_personnages/02_competences_et_traits.md) pour être utilisé efficacement.
*   **Loisirs :** Objets comme les jeux de société, les instruments de musique ou les aires de sport pour le divertissement des colons, contribuant à la satisfaction du [besoin de divertissement](../03_systeme_personnages/03_besoins_et_humeur.md).

### 2.3. Défenses

Les défenses sont cruciales pour protéger la colonie des attaques de [factions hostiles](../01_systeme_monde/03_factions_et_relations.md) ou de créatures sauvages. Elles sont intégrées au [système de combat](../07_systeme_combat/README.md).

*   **Barricades :** Ralentissent les ennemis et offrent une couverture aux défenseurs, permettant de canaliser les assaillants.
*   **Pièges :** Infligent des dégâts aux ennemis qui les déclenchent. Divers types de pièges peuvent être construits (à pointes, à ours, etc.).
*   **Tours de Garde :** Permettent aux colons armés de tirer sur les ennemis depuis une position surélevée et protégée, augmentant leur efficacité au combat.

## 3. Catalogue des Structures et Mobiliers

Chaque structure et mobilier sont définis par une `BuildingDef` (une [Custom Resource Godot](../../verite_unique/glossaire.md#custom-resource-godot)) qui inclut des propriétés telles que l'ID, le nom, la description, la catégorie, le coût de construction, le temps de construction, les prérequis, la taille, la durabilité et les effets sur la colonie ou les colons. Cette approche basée sur les données facilite la modularité et l'ajout de contenu.

### 3.1. Catégories des Structures et Mobiliers

Les structures et mobiliers sont regroupés en catégories fonctionnelles pour une meilleure organisation et une navigation simplifiée dans l'interface de construction :

*   **Structure:** Structure permettant de créer des pièces (Mur, Porte, Sol, Cloture,...).
*   **Production :** Mobiliers où les colons effectuent des tâches d'artisanat et de production (Atelier de menuiserie, Forge, Cuisine, Table de recherche,...).
*   **Stockage :** Mobiliers dédiées au stockage des ressources et des objets (Etagère simple, Etagère double, Armoire, Coffre, Palette de bois,...).
*   **Défense :** Structures et mobiliers conçues pour protéger la colonie (Rempart, Fossé, Tour de guet, Piège à pointes,...).
*   **Social et Loisirs :** Mobiliers améliorant le moral et les interactions sociales (Table d’echec, Jeu du Fer à Cheval, Bar de Taverne, Bibliotheques, ...).
*   **Hygiène :** Mobiliers fournissant les services d’hygiene (Puits, Latrines, Bains,...).

### 3.2. Acquisition et Amélioration

Les bâtiments sont construits par les colons en utilisant des ressources collectées ou produites. De nouveaux bâtiments peuvent être débloqués via le [Système de Recherche et Progression](../06_systeme_recherche_et_progression/README.md) [1]. Certains bâtiments peuvent être booster pour augmenter leur efficacité, leur capacité, leur durabilité ou leur valeur esthétique, grâce à d’autres objets à proximités.

## 4. Interactions et Dépendances

Le système de construction interagit étroitement avec la [gestion des colons](../03_systeme_personnages/README.md) (nécessitant des [compétences de construction](../03_systeme_personnages/02_competences_et_traits.md), affectant l'humeur par le confort [3]), la [production](../05_systeme_ressources_et_production/README.md) (nécessitant des établis, fournissant des ressources), et la [défense](../07_systeme_combat/README.md) (nécessitant des structures défensives). Les choix de construction ont un impact direct sur l'efficacité, le bien-être et la sécurité de la colonie. Une planification minutieuse est essentielle pour une colonie prospère.

## 5. Références

[1] [Système de Recherche et Progression](../06_systeme_recherche_et_progression/README.md)
[2] [Compétences et Traits des Personnages](../03_systeme_personnages/02_competences_et_traits.md)
[3] [Besoins et Humeur des Personnages](../03_systeme_personnages/03_besoins_et_humeur.md)
*   [README du Système de Construction](./README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)
*   [Gestion des Données Godot](../../verite_unique/gestion_donnees_godot.md)

