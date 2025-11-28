# Factions et Relations - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.1
**Tags :** [game-design, monde, factions, relations, diplomatie, commerce, conflit, FactionDef, PawnKindDef]

Ce document décrit les différentes factions présentes dans le monde de GuildForge Mobile, leurs caractéristiques, leurs objectifs et le système de relations qui régira les interactions diplomatiques, commerciales et conflictuelles avec la colonie du joueur. La gestion des factions est un élément clé pour l'immersion et la rejouabilité, influençant les événements, le commerce et les conflits.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Structure des Factions (Inspirée de FactionDef)](#2-structure-des-factions-inspirée-de-factiondef)
3.  [Types de Pions (Inspirés de PawnKindDef)](#3-types-de-pions-inspirés-de-pawnkinddef)
4.  [Factions Majeures](#4-factions-majeures)
5.  [Système de Relations](#5-système-de-relations)
6.  [Interactions Factionnelles](#6-interactions-factionnelles)
7.  [Intégration et Considérations Techniques](#7-intégration-et-considérations-techniques)
8.  [Références](#8-références)

---

## 1. Introduction

Les factions de GuildForge sont conçues pour créer un monde vivant et dynamique. Chaque faction possède une identité unique, des motivations claires et des comportements qui évoluent en fonction des actions du joueur et des événements du jeu. Ce système vise à offrir des opportunités (commerce, alliances) et des défis (attaques, raids) variés.

## 2. Structure des Factions (Inspirée de FactionDef)

Chaque faction est définie par un ensemble de propriétés, directement inspirées des `FactionDef` de RimWorld, qui seront implémentées en tant que `Custom Resources` dans Godot. Ces propriétés incluent :

*   **`defName` et `label` :** Identifiant unique et nom affiché de la faction.
*   **`description` :** Histoire et caractéristiques générales de la faction.
*   **`startingGoodwill` :** Attitude initiale envers le joueur (ex: `Hostile`, `Neutral`, `Ally`).
*   **`naturalEnemy` :** Liste des `FactionDef` avec lesquelles cette faction est naturellement hostile.
*   **`techLevel` :** Niveau technologique de la faction (ex: `Medieval`, `Neolithic`), influençant l'équipement et les objets.
*   **`pawnGroupMakers` :** Définit les types de groupes de PNJ que la faction peut générer pour des événements comme les raids ou les caravanes.
*   **`settlementGenerationWeight` :** Poids pour la génération de colonies de cette faction sur la carte du monde.
*   **`colorSpectrum` :** Couleurs associées à la faction pour l'affichage sur la carte ou dans l'interface.

## 3. Types de Pions (Inspirés de PawnKindDef)

Les `PawnKindDef` de RimWorld fournissent un modèle pour définir les types de personnages que chaque faction peut générer. Chaque `PawnKindDef` (ou son équivalent en `Custom Resource` Godot) spécifiera des propriétés telles que la race, l'équipement, les compétences et la puissance de combat.

**Tableau 1 : Exemples de Factions et de leurs Types de Pions**

| Faction | Type de Faction | Relations Initiales (Joueur) | PawnKindDefs Associés (Exemples) |
| :--- | :--- | :--- | :--- |
| **Village de Boisombre** | Tribu (Pacifique) | Neutre | `TribalWarrior`, `TribalHunter`, `TribalTrader` |
| **Comptoir de la Main d'Argent** | Outlander (Commerçant) | Amicale | `TownGuard`, `TownTrader`, `Craftsman` |
| **Bandits de la Montagne Noire** | Pirate (Hostile) | Hostile | `BanditThug`, `BanditArcher`, `BanditLeader` |

## 4. Factions Majeures

*   **La Colonie du Joueur (PlayerColony) :** Le groupe de colons dirigé par le joueur.
*   **Tribus Locales (LocalTribes) :** Groupes indigènes, souvent moins avancés technologiquement. Peuvent être amicales ou hostiles.
*   **Seigneurs Féodaux (FeudalLords) :** Nobles et leurs armées contrôlant des territoires voisins. Peuvent offrir protection contre tribut ou devenir des ennemis.
*   **Marchands Itinérants (WanderingMerchants) :** Petits groupes de commerçants voyageant entre les colonies. Généralement neutres.
*   **Brigands et Pillards (BanditsAndRaiders) :** Groupes hostiles cherchant à piller et à détruire. Toujours hostiles.

## 5. Système de Relations

Les relations entre la colonie du joueur et les autres factions sont gérées par un système de réputation.

*   **Facteurs Influents :** Commerce, aide (quêtes), conflits et événements aléatoires.
*   **Conséquences des Relations :**
    *   **Amicale :** Meilleures offres commerciales, aide militaire, événements positifs.
    *   **Neutre :** Commerce de base, pas d'hostilité directe.
    *   **Hostile :** Raids fréquents, refus de commerce, embuscades.

## 6. Interactions Factionnelles

Les interactions seront variées et dynamiques :

*   **Commerce :** Les factions amicales ou neutres enverront des caravanes commerciales.
*   **Raids et Attaques :** Les factions hostiles lanceront des raids pour piller la colonie.
*   **Quêtes :** Les factions pourront proposer des quêtes au joueur (sauvetage, livraison, défense).
*   **Diplomatie :** Le joueur pourra améliorer ou détériorer ses relations par ses actions.
*   **IA des Factions :** Un système d'IA simple gérera les décisions des factions en fonction de leur force, de leurs besoins et de leurs relations.

## 7. Intégration et Considérations Techniques

*   **`FactionManager` :** Un module dédié sera implémenté pour gérer les factions, leurs relations et leurs comportements.
*   **Dépendances :** Ce système interagira étroitement avec le `EventManager`, l'`AIController` et le système de génération de monde.
*   **Interface Utilisateur :** Un panneau "Factions" affichera clairement la liste des factions, leur réputation et leurs relations mutuelles.

## 8. Références

*   [README du Game Design](../README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)
*   [Génération Procédurale du Monde](./01_generation_procedurale.md)

