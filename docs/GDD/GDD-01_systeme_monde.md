---
statut: Brouillon
version: 2.3
auteur: Architecte de Game Design et Spécialiste de l'Émergence (AGDSE)
date: 2025-11-30
tags: [GDD, monde, génération-procédurale, biomes, factions, caravanes, exploration, RimWorld-like]
---

# GDD-01 : Système Monde et Exploration

## I. Introduction et Philosophie du Design

Ce document décrit le **Système Monde** de GuildForge Mobile, qui englobe la génération procédurale, les biomes, les factions, et les mécaniques d'exploration.

**Philosophie du Design (AGDSE) :** Le monde doit être un **conteur d'histoires émergentes** et un **défi constant**. La génération doit être déterministe et reproductible, mais les interactions (factions, événements) doivent être dynamiques et imprévisibles, fidèles à l'esprit RimWorld-like.

## II. Génération Procédurale du Monde

Le monde est généré de manière procédurale pour garantir une rejouabilité infinie et une cohérence globale/locale.

### II.1. Principes de la Génération

*   **Structure :** Le monde est basé sur une grille de tuiles globale (carte du monde) et des cartes isométriques locales pour la zone de jeu.
*   **Déterminisme :** Le processus est strictement déterministe et repose sur une `Seed` unique.
*   **Objectif Clé :** Assurer la prédominance d'une seule masse terrestre jouable, évitant les archipels fragmentés pour une expérience de jeu plus cohérente.

### II.3. Étapes de Génération Locale (Design)

La génération de la carte locale (zone de jeu) est un processus séquentiel qui garantit la cohérence du monde. Ces étapes définissent l'ordre dans lequel les éléments de *game design* sont placés :

1.  **Définition du Terrain de Base :** Le type de sol et la fertilité sont définis en fonction du Biome global de la tuile.
2.  **Placement du Relief :** Les obstacles naturels (collines, montagnes) sont tracés, influençant le mouvement et la construction.
3.  **Tracé des Points d'Eau :** Les rivières et les lacs sont placés, créant des sources d'eau et des barrières naturelles.
4.  **Distribution des Ressources :** Les ressources (minerais, bois, eau, gibier) sont distribuées en fonction du Biome et du terrain généré.
5.  **Placement des Points d'Intérêt (POI) :** Les lieux d'exploration (Ruines, Donjons, Camps de Factions) sont ancrés dans la topographie.

### II.2. Paramétrage par le Joueur

Le joueur peut influencer la génération via des paramètres stockés dans une `Custom Resource` Godot (`WorldGenerationSettings`) :

| Paramètre | Type de Contrôle | Impact sur la Génération |
| :--- | :--- | :--- |
| **Seed du Monde** | Champ de texte | Garantit l'unicité et la reproductibilité. |
| **Couverture Terrestre** | Curseur (0% à 100%) | Ratio entre les tuiles terrestres et océaniques. |
| **Climat (Précipitations/Température)** | Curseur (Froid/Chaud, Bas/Élevé) | Influence la distribution des biomes (Diagramme de Whittaker simplifié). |
| **Densité des Factions** | Curseur (Faible/Normal/Élevé) | Détermine la quantité de camps PNJ implantés. |



## III. Biomes et Environnement

Les biomes sont des régions distinctes définies par des `BiomeDef` qui influencent le gameplay local.

### III.1. Attribution et Types de Biomes

Chaque tuile terrestre se voit attribuer un `BiomeDef` en fonction de sa **Température** et de son **Humidité**.

| Type de Biome (Exemple) | Caractéristiques Clés | Impact sur le Gameplay |
| :--- | :--- | :--- |
| **Forêt Tempérée** | Fertilité élevée, faune/flore abondantes, climat modéré. | Facile pour l'agriculture, bon pour le bois, risque modéré. |
| **Désert Aride** | Faible fertilité, températures extrêmes, rareté de l'eau. | Défi de survie, ressources minières potentielles, difficulté de déplacement. |
| **Toundra/Polaire** | Températures très basses, faible fertilité, faune rare. | Survie extrême, nécessite des vêtements chauds, peu de ressources. |
| **Jungle/Marais** | Humidité très élevée, maladies fréquentes, difficulté de déplacement. | Risque de maladie, ressources exotiques, construction difficile. |

### III.2. Caractéristiques des Biomes (BiomeDef)

Chaque `BiomeDef` spécifie :
*   **Conditions Climatiques :** Température et précipitations moyennes.
*   **Ressources :** Types de plantes sauvages (`wildPlantGrowsWith`), densité animale (`animalDensity`), `forageability` (facilité de cueillette).
*   **Difficulté :** Fertilité du sol (`fertility`), difficulté de déplacement (`movementDifficulty`).

## IV. Factions et Relations

Le monde est peuplé de factions dynamiques qui interagissent avec la colonie du joueur.

### IV.1. Structure des Factions (FactionDef)

Les factions sont définies par des `FactionDef` (Custom Resources) qui incluent :
*   **Attitude Initiale :** `startingGoodwill` (Hostile, Neutre, Amicale).
*   **Niveau Technologique :** `techLevel` (ex: `Medieval`), influençant l'équipement.
*   **Types de Pions :** Définis par des `PawnKindDef` (ex: `BanditThug`, `TownTrader`).
*   **Factions Majeures :** Colonie du Joueur, Tribus Locales, Seigneurs Féodaux, Marchands Itinérants, Brigands et Pillards.

### IV.2. Système de Relations

Les relations sont gérées par un système de réputation dynamique, influencé par :
*   **Actions du Joueur :** Commerce, aide (quêtes), conflits.
*   **Conséquences :** Les relations (Amicale, Neutre, Hostile) déterminent les interactions (caravanes commerciales, raids, quêtes).

## V. Voyages et Exploration

Le système de voyages permet d'étendre l'expérience de jeu au-delà de la colonie principale.

### V.1. Création et Déroulement des Caravanes

*   **Préparation :** Sélection des colons (compétences), préparation des ressources (nourriture, fournitures).
*   **Déroulement :** Le temps de voyage dépend du terrain et de la charge. Les colons en expédition conservent leurs besoins (faim, humeur).
*   **Événements :** Le voyage est un déclencheur majeur d'événements aléatoires (attaques, rencontres, découvertes).
*   **Actions en Expédition :** Collecte de ressources, Commerce, Exploration de Points d'Intérêt, Attaque/Défense.

### V.2. Artefacts et Lieux Anciens

L'exploration est récompensée par la découverte d'éléments ancrés dans le lore médiéval :
*   **Artefacts :** Objets rares sans propriétés magiques (reliques historiques, livres de connaissances, trésors).
*   **Lieux Anciens :** Sites abandonnés (ruines, cryptes, mines) qui offrent des défis (combats, pièges) et des récompenses (ressources, artefacts).

---
### Historique de Consolidation
Ce document consolide les anciens fichiers suivants du répertoire `docs/GDD/01_systeme_monde/` :
*   `01_generation_procedurale.md`
*   `02_biomes_et_environnement.md`
*   `03_factions_et_relations.md`
*   `04_voyages_et_caravanes.md`
*   `05_artefacts_et_lieux_anciens.md`
