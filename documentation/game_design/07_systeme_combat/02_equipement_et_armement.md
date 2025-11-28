# Équipement et Armement - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [game-design, combat, équipement, armement, armes, armures, fabrication, qualité, médiéval]

Ce document détaille les différents types d'**armes** (épées, arcs, lances) et d'**armures** (cuir, cotte de mailles, plaques) disponibles dans GuildForge Mobile. Il décrit leurs caractéristiques, leurs effets et leur impact sur le combat, soulignant l'importance de l'équipement pour la survie et l'efficacité des colons. Ce système est intrinsèquement lié aux [mécaniques de combat de base](./01_mecaniques_de_base.md) et à l'[équipement et inventaire des personnages](../03_systeme_personnages/06_equipement_et_inventaire.md).

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Types d'Équipement](#2-types-déquipement)
    *   [Armes](#21-armes)
        *   [Classes d'Armes](#211-classes-darmes)
        *   [Exemples d'Armes Spécifiques](#212-exemples-darmes-spécifiques)
    *   [Armures](#22-armures)
        *   [Types d'Armures](#221-types-darmures)
3.  [Fabrication et Acquisition](#3-fabrication-et-acquisition)
4.  [Effets et Interactions](#4-effets-et-interactions)
5.  [Références](#5-références)

---

## 1. Introduction

L'équipement, et plus particulièrement les armes et armures, sont des éléments cruciaux pour la survie des colons face aux menaces du monde de GuildForge Mobile. Ce système met l'accent sur la fabrication, la qualité et l'adaptation à l'univers médiéval et réaliste du jeu, influençant directement les performances des colons au combat et leur capacité à se défendre. Une bonne gestion de l'équipement est essentielle pour la sécurité et la prospérité de la colonie.

## 2. Types d'Équipement

L'équipement est divisé en deux catégories principales : les armes pour l'attaque et les armures pour la défense. Chaque pièce d'équipement est définie par une `ItemDef` (une [Custom Resource Godot](../../verite_unique/glossaire.md#custom-resource-godot)) qui inclut des propriétés telles que l'ID, le nom, la description, le poids, la durabilité, et les statistiques spécifiques.

### 2.1. Armes

Les armes sont utilisées par les colons pour le combat et la chasse. Elles varient en type, en dégâts, en vitesse d'attaque et en portée, et sont classées selon leur mode d'action. Le choix de l'arme est stratégique et dépend de la situation de combat et des compétences du colon.

#### 2.1.1. Classes d'Armes

Les armes sont catégorisées en classes, influençant leur utilisation et leurs effets en combat. Ces classes déterminent les portées, les vitesses d'attaque, et les bonus/malus spécifiques à chaque type d'arme, et sont cruciales pour l'équilibrage du combat et la diversité des stratégies [1]. Ces classes sont inspirées des `WeaponClassDef` de RimWorld et sont implémentées comme des [Custom Resources Godot](../../verite_unique/glossaire.md#custom-resource-godot).

**Tableau 1 : Exemples de Classes d'Armes (inspiré de `WeaponClassDef` de RimWorld)**

| Classe d'Arme | Description (GuildForge) |
| :--- | :--- |
| **Mêlée Contondante** | Armes de mêlée contondantes (masses, gourdins) : Infligent des [dégâts contondants](./01_mecaniques_de_base.md#types-de-dégâts-et-capacités-doutils), efficaces contre les armures lourdes, peuvent étourdir les adversaires. |
| **Mêlée Perforante** | Armes de mêlée perforantes (lances, dagues) : Infligent des [dégâts perforants](./01_mecaniques_de_base.md#types-de-dégâts-et-capacités-doutils), ignorent une partie de l'armure, permettent des attaques précises visant des points faibles. |
| **Mêlée Tranchante** | Armes de mêlée tranchantes (épées, haches) : Infligent des [dégâts tranchants](./01_mecaniques_de_base.md#types-de-dégâts-et-capacités-doutils), efficaces contre la chair, peuvent causer des saignements (hémorragies). |
| **À Distance** | Armes à distance (arcs, arbalètes) : Permettent des attaques à distance, nécessitent des munitions, varient en portée et précision. Idéales pour le harcèlement et le contrôle de zone. |

#### 2.1.2. Exemples d'Armes Spécifiques

*   **Armes de Mêlée :**
    *   **Épées :** (courtes, longues) Armes polyvalentes, équilibrées en dégâts et vitesse. Nécessitent la [compétence Mêlée](../03_systeme_personnages/02_competences_et_traits.md).
    *   **Haches :** (de guerre, de bûcheron) Dégâts élevés, souvent plus lentes. Utiles pour le combat et la [collecte de bois](../05_systeme_ressources_et_production/01_collecte_et_extraction.md).
    *   **Lances :** Longue portée en mêlée, idéales pour maintenir la distance. Nécessitent la [compétence Mêlée](../03_systeme_personnages/02_compétences_et_traits.md).
    *   **Masses :** Dégâts contondants, efficaces contre les armures. Nécessitent la [compétence Mêlée](../03_systeme_personnages/02_compétences_et_traits.md).
    *   **Dagues :** Armes légères et rapides, faibles dégâts mais haute précision. Utiles pour les attaques furtives.
*   **Armes à Distance :**
    *   **Arcs :** (courts, longs) Bon équilibre entre portée et cadence de tir. Nécessitent la [compétence Tir](../03_systeme_personnages/02_compétences_et_traits.md) et des flèches.
    *   **Arbalètes :** Dégâts élevés, longue portée, mais lente cadence de tir. Nécessitent la [compétence Tir](../03_systeme_personnages/02_compétences_et_traits.md) et des carreaux.
    *   **Frondes :** Armes rudimentaires, faibles dégâts, mais munitions faciles à trouver. Nécessitent la [compétence Tir](../03_systeme_personnages/02_compétences_et_traits.md).
    *   **Javelots :** Armes de jet à usage unique, bons dégâts à courte/moyenne portée. Nécessitent la [compétence Tir](../03_systeme_personnages/02_compétences_et_traits.md).

### 2.2. Armures

Les armures protègent les colons des dégâts physiques. Elles offrent différents niveaux de protection et peuvent affecter la mobilité, la vitesse de déplacement et la capacité de travail. Le choix de l'armure est un compromis entre protection et agilité.

#### 2.2.1. Types d'Armures

*   **Armures Légères :** Vêtements en tissu, armures de cuir.
    *   **Caractéristiques :** Faible protection contre les dégâts, bonne mobilité, faible pénalité de vitesse, discrétion accrue. Idéales pour les archers ou les colons non-combattants.
*   **Armures Lourdes :** Armures de mailles, armures de plaques (rudimentaires).
    *   **Caractéristiques :** Haute protection contre les dégâts, faible mobilité, pénalité de vitesse plus importante, réduction de la discrétion. Essentielles pour les combattants de première ligne.

## 3. Fabrication et Acquisition

L'équipement est principalement acquis par la fabrication et peut être amélioré, reflétant l'importance de l'[artisanat](../05_systeme_ressources_et_production/03_artisanat_et_fabrication.md) dans la colonie. Les marchands itinérants peuvent également proposer des pièces d'équipement rares ou de meilleure qualité.

*   **Artisanat :** Les armes et armures sont fabriquées par des colons compétents (forgerons, tailleurs) dans des ateliers spécialisés (forge, atelier de couture). Les matériaux utilisés (fer, acier, cuir, tissu) influencent la qualité finale de l'objet.
*   **Qualité :** La qualité de l'équipement (rudimentaire, standard, de maître) affecte ses statistiques (dégâts, protection, durabilité) et sa valeur. La [compétence de l'artisan](../03_systeme_personnages/02_compétences_et_traits.md) est primordiale pour produire des objets de haute qualité [3].
*   **Réparation :** L'équipement s'use avec le temps et l'utilisation. Il peut être réparé pour restaurer sa durabilité, nécessitant des matériaux et des compétences spécifiques. Un équipement bien entretenu dure plus longtemps et conserve sa valeur.

## 4. Effets et Interactions

L'équipement influence directement de nombreux aspects du jeu, créant des synergies et des dépendances avec d'autres systèmes :

*   **Combat :** L'équipement influence directement l'efficacité des colons au combat (dégâts infligés, dégâts subis, précision, vitesse d'attaque) [1].
*   **Compétences :** Certaines armes peuvent nécessiter une [compétence spécifique](../03_systeme_personnages/02_compétences_et_traits.md) pour être utilisées efficacement (ex: maîtrise de l'épée). Un colon sans la compétence adéquate subira des malus importants.
*   **Moral :** Un équipement de bonne qualité peut améliorer le [moral des colons](../03_systeme_personnages/03_besoins_et_humeur.md), tandis qu'un équipement endommagé ou insuffisant peut le dégrader, augmentant le risque de crises de nerfs.
*   **Poids :** Le poids de l'équipement contribue à la charge totale du colon, affectant sa vitesse de déplacement et sa capacité de transport ([équipement et inventaire](../03_systeme_personnages/06_equipement_et_inventaire.md)) [2].
*   **Santé :** L'armure protège les parties du corps des blessures, réduisant la sévérité des dégâts et la probabilité de [blessures localisées](../03_systeme_personnages/04_sante_et_blessures.md) [5].

## 5. Références

[1] [Mécaniques de Combat de Base](./01_mecaniques_de_base.md)
[2] [Équipement et Inventaire des Personnages](../03_systeme_personnages/06_equipement_et_inventaire.md)
[3] [Artisanat et Fabrication](../05_systeme_ressources_et_production/03_artisanat_et_fabrication.md)
[4] [Besoins et Humeur des Personnages](../03_systeme_personnages/03_besoins_et_humeur.md)
[5] [Santé et Blessures des Personnages](../03_systeme_personnages/04_sante_et_blessures.md)
*   [README du Système de Combat](./README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

