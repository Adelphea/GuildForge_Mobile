---
title: "GDD-05 : Système Construction"
version: 1.0
date: 2025-11-30
auteur: Architecte de Game Design et Spécialiste de l'Émergence (AGDSE)
tags: [game-design, construction, structures, zones, confort, survie]
---

# GDD-05 : Système Construction

Ce document consolide les spécifications de *game design* pour le système de construction, incluant les structures, le mobilier, la gestion des zones, et l'impact de la température et du confort sur la colonie.

---

## Table des Matières

I. Introduction et Principes de Design
II. Structures et Mobilier
    II.1. Mécaniques de Bâtiment
    II.2. Catalogue des Bâtiments (Catégories)
    II.3. Défenses
III. Aménagement et Zones
    III.1. Principes des Zones
    III.2. Types de Zones (Stockage, Travail, Social)
IV. Température et Confort
    IV.1. Impact de la Température sur les Colons
    IV.2. Gestion de la Température (Chauffage, Isolation)
    IV.3. Confort et Bien-être

---

## I. Introduction et Principes de Design

Le système de construction est le principal moyen pour le joueur d'interagir avec l'environnement et de garantir la survie et la prospérité de sa colonie.

**Principe de Design AGDSE :** La construction doit être une **réponse stratégique** aux défis environnementaux et sociaux. Chaque choix de matériau ou d'aménagement doit avoir des conséquences mesurables sur le moral, la productivité et la sécurité des colons.

## II. Structures et Mobilier

Les structures et le mobilier sont les éléments physiques de la base, définis par des `BuildingDef` pour la modularité.

### II.1. Mécaniques de Bâtiment

*   **Exécution :** Les colons avec la compétence **Construction** exécutent les ordres.
*   **Matériaux :** La durabilité, la résistance au feu et l'isolation varient selon le matériau (Bois, Pierre, Métal).

**Tableau 1 : Exemples de Structures de Base**

| Structure | Matériaux (Exemples) | Fonction Spécifique |
| :--- | :--- | :--- |
| **Mur en Bois/Pierre** | Bois/Pierre | Protection contre les éléments et les menaces. |
| **Porte Simple/Blindée** | Bois/Métal | Contrôle d'accès, résistance aux intrusions. |
| **Toit** | Bois | Protection contre les intempéries, régulation de la température. |

### II.2. Catalogue des Bâtiments (Catégories)

Les éléments constructibles sont regroupés par fonction pour l'interface utilisateur :

| Catégorie | Rôle de Design | Exemples |
| :--- | :--- | :--- |
| **Structure** | Délimitation des pièces, protection. | Murs, Sols, Toits. |
| **Production** | Fabrication d'objets et de ressources. | Atelier de menuiserie, Forge, Cuisine. |
| **Stockage** | Organisation des ressources. | Étagères, Coffres, Palettes. |
| **Défense** | Protection contre les menaces. | Remparts, Tours de guet, Pièges. |
| **Social/Loisirs** | Amélioration du moral et du divertissement. | Table d’échecs, Bar de Taverne. |
| **Hygiène** | Maintien de la propreté et de la santé. | Puits, Latrines, Bains. |

### II.3. Défenses

Les défenses sont intégrées au système de combat pour protéger la colonie.

*   **Barricades :** Ralentissent les ennemis et offrent une couverture.
*   **Pièges :** Infligent des dégâts aux ennemis.
*   **Tours de Garde :** Offrent une position surélevée et protégée pour les colons armés.

## III. Aménagement et Zones

La gestion des zones permet au joueur d'organiser l'espace et de prioriser les activités des colons.

### III.1. Principes des Zones

*   **Flexibilité :** Le joueur dessine des zones de forme et de taille variées.
*   **Priorisation :** Les zones peuvent avoir des priorités pour guider le travail des colons.
*   **Optimisation :** La proximité des zones de stockage et de production est essentielle pour minimiser les déplacements.

### III.2. Types de Zones

| Type de Zone | Fonction de Design | Exemples |
| :--- | :--- | :--- |
| **Stockage** | Entreposage des ressources. | Dépôt Général, Réfrigérateur, Armurerie, Décharge. |
| **Travail/Production** | Lieu d'activités spécifiques. | Atelier, Forge, Cuisine, Champs/Pâturages. |
| **Social/Repos** | Bien-être et moral des colons. | Dortoir/Chambres, Salle Commune, Infirmerie, Prison. |
| **Spéciales** | Gestion des risques. | Zone de Danger, Zone Interdite. |

## IV. Température et Confort

La gestion de l'environnement intérieur est vitale pour la santé et le moral des colons.

### IV.1. Impact de la Température sur les Colons

*   **Froid Extrême :** Malus de Moral, risque de maladies (hypothermie, grippe), gelures, productivité réduite.
*   **Chaleur Extrême :** Malus de Moral, risque de maladies (coup de chaleur, déshydratation), productivité réduite.

### IV.2. Gestion de la Température (Chauffage, Isolation)

*   **Chauffage :** Feux de Camp, Cheminées, Poêles (nécessitent du combustible).
*   **Refroidissement :** Ventilation naturelle, construction de caves (zones fraîches).
*   **Isolation :** Choix des matériaux (Pierre > Bois), épaisseur des murs, toits bien construits.

### IV.3. Confort et Bien-être

Le confort est un facteur de moral et de productivité, influencé par :

*   **Qualité du Logement :** Taille, propreté, décoration des chambres.
*   **Mobilier :** Lits, chaises, tables de qualité.
*   **Environnement Esthétique :** Décorations, jardins, œuvres d'art.
*   **Propreté :** Réduit le stress et le risque de maladies.

---

## V. Références

[1] [GDD-03 : Système Personnages](../GDD-03_systeme_personnages.md)
[2] [TDD-02 : Architecture des Systèmes de Base](../TDD/TDD-02_architecture_des_systemes_de_base.md)
[3] [TDD-04 : Spécifications des Systèmes de Jeu](../TDD/TDD-04_specifications_des_systemes_de_jeu.md)
[4] [GDD-01 : Système Monde](../GDD-01_systeme_monde.md)
[5] [GDD-06 : Système Ressources et Production](../GDD-06_systeme_ressources_et_production.md)
[6] [GDD-08 : Système Combat](../GDD-08_systeme_combat.md)
[7] [GDD-09 : Système Économie et Commerce](../GDD-09_systeme_economie_et_commerce.md)
[8] [GDD-12 : Système Interface et UX](../GDD-12_systeme_interface_et_ux.md)
[9] [PMD/conventions_generales.md](../PMD/conventions_generales.md)
[10] [PMD/conventions_techniques.md](../PMD/conventions_techniques.md)
[11] [TDD-01 : Architecture de Données](../TDD/TDD-01_architecture_de_donnees.md)
[12] [TDD-03 : Gestion des Actifs et Intégration](../TDD/TDD-03_gestion_des_actifs_et_integration.md)
[13] [TDD-05 : Opérations, Performance et Extensibilité](../TDD/TDD-05_operations_performance_et_extensibilite.md)
[14] [CONTRIBUTING.md](../../CONTRIBUTING.md)
[15] [TREE.md](../../TREE.md)
[16] [agent_state.md](../../agent_state.md)
