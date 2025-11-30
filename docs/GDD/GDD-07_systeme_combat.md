---
title: "GDD-07 : Système Combat"
version: 1.0
date: 2025-11-30
auteur: Architecte de Game Design et Spécialiste de l'Émergence (AGDSE)
tags: [game-design, combat, défense, tactique, médiéval, ia]
---

# GDD-07 : Système Combat

Ce document consolide les spécifications de *game design* pour le système de combat, incluant les mécaniques de base, l'équipement, l'IA et la défense de la colonie.

---

## Table des Matières

I. Introduction et Principes de Design
II. Mécaniques de Combat de Base
    II.1. Types de Combat (Mêlée et Distance)
    II.2. Types de Dégâts (Design)
III. Équipement et Armement
    III.1. Classes d'Armes
    III.2. Types d'Armures
IV. IA et Comportement en Combat
    IV.1. Principes de l'IA Ennemie
    IV.2. Comportements Tactiques
V. Défense de la Colonie
    V.1. Types de Menaces
    V.2. Structures Défensives

---

## I. Introduction et Principes de Design

Le système de combat est conçu pour être tactique, réaliste et intégré à l'univers médiéval du jeu. Il doit offrir un défi constant et nécessiter une planification stratégique.

**Principe de Design AGDSE :** Le combat doit être une **conséquence directe de la narration émergente**. Les affrontements sont rares mais significatifs, avec des conséquences durables sur les colons (blessures localisées, moral).

## II. Mécaniques de Combat de Base

Le combat repose sur les compétences des colons, l'équipement et le positionnement.

### II.1. Types de Combat (Mêlée et Distance)

| Type de Combat | Compétence Clé | Facteurs Déterminants |
| :--- | :--- | :--- |
| **Mêlée** | Mêlée | Type d'arme (tranchante, contondante, perforante), qualité de l'armure, traits de caractère (force, agilité). |
| **Distance** | Tir | Type d'arme (arc, arbalète), portée, ligne de vue, couverture, gestion des munitions. |

### II.2. Types de Dégâts (Design)

Le système de dégâts est nuancé pour refléter l'impact des armes médiévales sur le corps humain et l'armure.

| Type de Dégât | Effet Design Principal | Efficacité |
| :--- | :--- | :--- |
| **Contusion** | Étourdissement, fractures, ecchymoses. | Efficace contre les armures lourdes. |
| **Coupure** | Saignements (hémorragies), section de membres. | Efficace contre les cibles peu protégées. |
| **Perforation** | Dégâts précis aux organes, ignore une partie de l'armure. | Efficace contre les armures intermédiaires. |

*(Note : Les définitions techniques des dégâts (`DamageDef`) et des effets de statut (`HediffDef`) sont déplacées vers **TDD-04**.)*

## III. Équipement et Armement

L'équipement est crucial pour la survie et l'efficacité au combat.

### III.1. Classes d'Armes

Les armes sont classées par leur mode d'action et leur type de dégât :

| Classe d'Arme | Exemples | Dégât Principal | Rôle Tactique |
| :--- | :--- | :--- | :--- |
| **Mêlée Contondante** | Masses, Gourdins | Contusion | Briser les défenses lourdes. |
| **Mêlée Perforante** | Lances, Dagues | Perforation | Cibler les points faibles de l'armure. |
| **Mêlée Tranchante** | Épées, Haches | Coupure | Infliger des saignements et des blessures graves. |
| **À Distance** | Arcs, Arbalètes | Perforation/Coupure | Contrôle de zone, harcèlement. |

### III.2. Types d'Armures

L'armure est un compromis entre protection et mobilité.

| Type d'Armure | Protection | Mobilité | Pénalité |
| :--- | :--- | :--- | :--- |
| **Légère** (Tissu, Cuir) | Faible | Bonne | Faible pénalité de vitesse. |
| **Lourde** (Mailles, Plaques) | Haute | Faible | Pénalité de vitesse et d'agilité importante. |

## IV. IA et Comportement en Combat

L'IA des ennemis est conçue pour être adaptative et diversifiée.

### IV.1. Principes de l'IA Ennemie

*   **Comportement Adaptatif :** L'IA réagit à l'état de la colonie (défenses, force des colons, moral).
*   **Diversité Tactique :** Les ennemis (bandits, animaux) ont des schémas de comportement distincts.
*   **Prise de Décision :** L'IA prend des décisions basées sur des objectifs clairs (attaquer, piller, fuir, contourner).

### IV.2. Comportements Tactiques

| Comportement | Objectif Prioritaire | Exemples d'Ennemis |
| :--- | :--- | :--- |
| **Agression Directe** | Infliger un maximum de dégâts. | Animaux enragés, certains bandits. |
| **Tactique de Contournement** | Trouver les points faibles, éviter les défenses. | Bandits expérimentés, factions rivales. |
| **Pillage** | Voler les ressources, fuir une fois le butin acquis. | Petits groupes de pillards. |
| **Harassement** | Attaquer puis se retirer pour affaiblir. | Petites unités rapides. |

## V. Défense de la Colonie

La défense nécessite une planification stratégique utilisant les structures et le terrain.

### V.1. Types de Menaces

*   **Raids de Bandits :** Groupes hostiles cherchant à piller et capturer.
*   **Attaques d'Animaux Sauvages :** Bêtes féroces attirées par la nourriture ou les colons.
*   **Catastrophes Naturelles :** Événements (tempêtes, incendies) qui affaiblissent les défenses.

### V.2. Structures Défensives

| Structure | Rôle Défensif |
| :--- | :--- |
| **Murs et Palissades** | Barrière physique, canalisation des ennemis. |
| **Tours de Guet** | Avantage tactique pour les archers, surveillance. |
| **Pièges** | Blesser ou ralentir les assaillants. |
| **Choke Points** | Goulots d'étranglement pour concentrer les ennemis. |

---

## VI. Références

[1] [GDD-03 : Système Personnages](../GDD-03_systeme_personnages.md)
[2] [GDD-05 : Système Construction](../GDD-05_systeme_construction.md)
[3] [GDD-06 : Système Ressources et Production](../GDD-06_systeme_ressources_et_production.md)
[4] [GDD-02 : Système Conteur IA](../GDD-02_systeme_conteur_ia.md)
[5] [TDD-04 : Spécifications des Systèmes de Jeu](../TDD/TDD-04_specifications_des_systemes_de_jeu.md)
[6] [PMD/conventions_generales.md](../PMD/conventions_generales.md)
