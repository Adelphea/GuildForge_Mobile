---
title: "GDD-06 : Système Ressources et Production"
version: 1.0
date: 2025-11-30
auteur: Architecte de Game Design et Spécialiste de l'Émergence (AGDSE)
tags: [game-design, ressources, production, artisanat, agriculture, logistique, survie]
---

# GDD-06 : Système Ressources et Production

Ce document consolide les spécifications de *game design* pour le système de ressources et de production, couvrant la collecte, l'agriculture, l'élevage, l'artisanat et la gestion des stocks.

---

## Table des Matières

I. Introduction et Principes de Design
II. Types de Ressources et Acquisition
    II.1. Catégories de Ressources
    II.2. Mécaniques de Collecte et d'Extraction
III. Production Primaire (Agriculture et Élevage)
    III.1. Système d'Agriculture
    III.2. Système d'Élevage
IV. Production Secondaire (Artisanat et Fabrication)
    IV.1. Principes de l'Artisanat
    IV.2. Processus de Fabrication
V. Gestion des Stocks et Logistique
    V.1. Principes de l'Inventaire
    V.2. Mécaniques de Stockage et de Détérioration

---

## I. Introduction et Principes de Design

Le système de ressources et de production est le moteur économique et de survie de la colonie. Il régit la transformation des matières premières en biens de consommation, outils, équipements et structures.

**Principe de Design AGDSE :** La production doit être un **cycle continu de défis et de solutions**. La gestion des ressources doit être stratégique, avec des contraintes (saisons, fertilité, péremption) qui forcent le joueur à planifier et à spécialiser ses colons.

## II. Types de Ressources et Acquisition

Les ressources sont les fondations de la colonie, obtenues par interaction directe avec l'environnement.

### II.1. Catégories de Ressources

Les ressources sont classées par origine et usage :

| Catégorie | Description | Exemples |
| :--- | :--- | :--- |
| **Naturelles** | Collectées directement (non renouvelables ou renouvellement lent). | Pierre, Minerai de fer, Argile, Eau. |
| **Biologiques** | Issues de la faune et de la flore sauvage (renouvelables par cycle). | Bois, Baies, Herbes médicinales, Viande crue, Peaux. |
| **Agricoles** | Produites par l'agriculture et l'élevage (renouvelables et stables). | Céréales, Légumes, Lait, Laine. |
| **Transformées** | Issues de l'artisanat (matières premières raffinées). | Planches de bois, Lingots de fer, Tissu, Farine. |

### II.2. Mécaniques de Collecte et d'Extraction

Les colons utilisent leurs compétences et des outils pour acquérir des ressources :

| Activité | Compétence Requise | Outil Principal | Description Design |
| :--- | :--- | :--- | :--- |
| **Bûcheronnage** | Agriculture | Hache | Abattre des arbres pour le bois. |
| **Minage** | Minage | Pioche | Extraire du minerai et de la pierre des gisements. |
| **Cueillette** | Agriculture | Aucun | Collecter des plantes sauvages et des baies. |
| **Chasse** | Tir / Mêlée | Arme | Abattre des animaux pour la viande et les peaux. |
| **Pêche** | Dressage | Canne à pêche | Obtenir de la nourriture à partir des plans d'eau. |

L'efficacité de la collecte est directement liée au niveau de compétence du colon et à la qualité de l'outil utilisé.

## III. Production Primaire (Agriculture et Élevage)

Ces systèmes fournissent une source stable et renouvelable de nourriture et de matériaux.

### III.1. Système d'Agriculture

L'agriculture nécessite une gestion attentive des conditions environnementales :

*   **Champs et Cultures :** Préparation des parcelles, plantation, entretien (arrosage, désherbage) et récolte.
*   **Saisons et Climat :** Chaque culture a une saison de croissance optimale. Les événements météorologiques extrêmes (sécheresse, gel) peuvent détruire les récoltes.
*   **Fertilité des Sols :** Varie selon les tuiles. Elle peut être améliorée (engrais, compost) ou dégradée (surexploitation).

### III.2. Système d'Élevage

L'élevage permet la domestication d'animaux pour la production de ressources ou le transport :

*   **Animaux Domestiques :** Animaux de ferme (vaches, moutons, poulets) pour la viande, le lait, la laine ; animaux de bât (chevaux, ânes) pour le transport.
*   **Reproduction et Croissance :** Les animaux se reproduisent si les conditions sont favorables (abri, nourriture). La gestion du cheptel est une stratégie à long terme.
*   **Produits Animaux :** Viande (abattage), Lait/Œufs (collecte régulière), Laine/Peaux (artisanat), Transport (animaux de bât).

## IV. Production Secondaire (Artisanat et Fabrication)

L'artisanat transforme les ressources brutes en objets utiles.

### IV.1. Principes de l'Artisanat

*   **Établis :** La fabrication nécessite un établi spécifique (Forge, Atelier de menuiserie, Cuisine) qui doit être construit.
*   **Compétences :** La compétence du colon (Artisanat, Cuisine, etc.) influence la vitesse de fabrication et la qualité de l'objet.
*   **Recettes :** Chaque objet est associé à une recette spécifiant les matériaux requis, débloquée par la recherche ou la découverte.
*   **Qualité :** La qualité de l'objet (influencée par la compétence et les matériaux) détermine ses statistiques (durabilité, efficacité, dégâts) et sa valeur.

### IV.2. Processus de Fabrication

Le processus est géré par le système de gestion des tâches :

1.  **Sélection de la Recette :** Le joueur ordonne la fabrication d'un objet à un établi.
2.  **Assignation du Colon :** Un colon compétent est assigné à la tâche.
3.  **Collecte des Matériaux :** Le colon récupère les ressources depuis les zones de stockage.
4.  **Fabrication :** Le colon utilise l'établi pour produire l'objet.
5.  **Stockage :** L'objet fini est transporté vers une zone de stockage.

## V. Gestion des Stocks et Logistique

La logistique est cruciale pour l'efficacité de la colonie et la préservation des ressources.

### V.1. Principes de l'Inventaire

*   **Centralisation :** Toutes les ressources sont stockées dans des zones désignées.
*   **Priorisation :** Les zones de stockage peuvent être configurées pour prioriser certains types d'objets ou le transport.
*   **Visibilité :** Le joueur dispose d'une interface pour visualiser l'inventaire global, la quantité, la qualité et l'emplacement des objets.

### V.2. Mécaniques de Stockage et de Détérioration

*   **Zones de Stockage :** Définies par le joueur (Dépôt Général, Réfrigérateur/Garde-manger, Armurerie, Décharge).
*   **Péremption et Détérioration :** Les objets organiques (nourriture, cadavres) se détériorent avec le temps s'ils ne sont pas stockés dans des conditions appropriées (température contrôlée, abri).
*   **Capacité de Stockage :** Limitée par la taille des zones et la présence de conteneurs (coffres, étagères).

---

## VI. Références

[1] [GDD-03 : Système Personnages](../GDD-03_systeme_personnages.md)
[2] [GDD-05 : Système Construction](../GDD-05_systeme_construction.md)
[3] [GDD-07 : Système Recherche et Technologie](../GDD-07_systeme_recherche_et_technologie.md)
[4] [GDD-08 : Système Combat](../GDD-08_systeme_combat.md)
[5] [GDD-09 : Système Diplomatie et Commerce](../GDD-09_systeme_diplomatie_et_commerce.md)
[6] [TDD-01 : Architecture de Données](../TDD/TDD-01_architecture_de_donnees.md)
[7] [TDD-04 : Spécifications des Systèmes de Jeu](../TDD/TDD-04_specifications_des_systemes_de_jeu.md)
[8] [PMD/conventions_generales.md](../PMD/conventions_generales.md)
