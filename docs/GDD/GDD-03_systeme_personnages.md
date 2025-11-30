---
statut: Brouillon
version: 2.1
auteur: Manus, Architecte de Game Design et Spécialiste de l'Émergence (AGDSE)
date: 2025-11-30
tags: [GDD, personnages, colons, compétences, santé, relations, besoins, RimWorld-like]
---

# GDD-03 : Système Personnages (Colons)

Ce document consolide la conception du système de personnages, qui est au cœur de la simulation de colonie. Il couvre la création, les compétences, les besoins, la santé, les relations et la gestion quotidienne des colons.

## I. Création et Historique

Le processus de création définit le profil initial du colon, influencé par l'historique (Backstory) et les traits.

### I.1. Personnalisation et Profil

*   **Apparence :** Nom, Genre, Âge (influence stats et santé).*   **Backstories (Historiques) :** Définit les compétences de départ, les passions et les limitations (travail interdit). (Les règles de validation du contenu sont dans PMD/conventions_generales.md).   **Traits de Caractère :** Caractéristiques innées ou acquises qui affectent l'humeur, les interactions et la productivité (ex: Optimiste, Pyromane).

### I.2. Cycle *   **Tranches d'Âge :** Le colon passe par différentes tranches d'âge (Nouveau-né, Enfant, Adulte, Senior) avec un vieillissement annuel. (Le cycle de vie de la faune et de la flore est dans TDD-02). Tranche d'Âge | Impact sur les Stats | Progression des Compétences | Risque de Décès |
| :--- | :--- | :--- | :--- |
| **Enfant (0-13 ans)** | Faible force, aucune compétence de combat. | Apprentissage lent, focus sur les compétences sociales et intellectuelles. | Faible (hors maladie/accident). |
| **Adulte (14-59 ans)** | Pleine capacité physique et mentale. | Apprentissage normal, progression par la pratique. | Modéré (combat, maladie). |
| **Senior (60+ ans)** | Déclin physique progressif (vitesse, force). | Apprentissage ralenti, mais maintien des compétences acquises. | Élevé (vieillesse, maladie). |

La mort peut survenir par vieillesse, maladie, blessure ou crise de nerfs.

## II. Compétences et Progression

Le système de compétences régit l'efficacité des colons dans les tâches.

### II.1. Système de Compétences et Passions

*   **Acquisition :** Apprentissage par la pratique (faire une tâche augmente la compétence associée).
*   **Passions ("Flammes") :** Accélèrent l'apprentissage (Flamme simple +50%, Double flamme +100%).
*   **Liste (12 Compétences) :** Tir, Mêlée, Construction, Minage, Cuisine, Agriculture, Animaux, Artisanat, Art, Médecine, Sociabilité, Intellectuel.
*   **Niveaux :** 0 à 20.
*   **Déclin :** Les compétences non pratiquées peuvent décliner lentement, surtout chez les Seniors.

### II.2. Équipement et Inventaire

*   **Équipement :** Armes (Mêlée/Distance), Armures (Légères/Lourdes), Vêtements (Protection thermique/Moral).
*   **Effets :** L'équipement confère protection (par partie du corps) et peut donner des bonus/malus aux compétences (ex: Armure lourde réduit l'Agilité).
*   **Inventaire :** Limité par la Capacité de Transport (déterminée par la Force, les Traits et l'Équipement).

## III. Besoins, Humeur et Santé

La gestion de ces systèmes est cruciale pour la productivité et la survie.

### III.1. Besoins Fondamentaux (`NeedDef`)

*   **Faim/Soif :** Nécessite une gestion des ressources alimentaires et de l'eau potable.
*   **Sommeil :** Qualité du repos influencée par le lieu (sol, lit, chambre privée).
*   **Hygiène/Vessie :** Nécessite des infrastructures (latrines, lavoirs) pour éviter les maladies et les malus d'humeur.
*   **Divertissement :** Nécessite des activités récréatives (jeux, socialisation).
*   **Environnement :** Influencé par la propreté et l'esthétique des zones fréquentées.

### III.2. Humeur et Crises de Nerfs (`ThoughtDef`)

*   **Humeur :** Moyenne pondérée des besoins et des pensées.
*   **Pensées :** Modificateurs d'humeur positifs ou négatifs basés sur les événements (ex: `AteGoodMeal` +Humeur, `WitnessedDeath` -Humeur).
*   **Crises de Nerfs :** Si l'humeur tombe trop bas, le colon entre en crise de nerfs (ex: **Folie Destructrice**, **Fugue**, **Colère**). Ces crises sont des événements majeurs de *gameplay* qui peuvent mettre en péril la colonie.

### III.3. Santé et Blessures

*   **Localisation des Dégâts :** Les blessures affectent des parties spécifiques du corps (tête, torse, membres) avec des conséquences localisées (ex: jambe blessée réduit la vitesse).
*   **Types d'Affections :** Coupures, Fractures, Brûlures, Maladies (Fièvre, Peste), Conditions Chroniques. (Les types de dégâts sont définis dans TDD-04).
*   **Soins :** Dépendent de la compétence **Médecine** et des ressources médiévales (Herbes, Bandages).
*   **Infections :** Risque majeur de toute blessure non traitée, pouvant entraîner la mort.

## IV. Relations Sociales et Gestion Quotidienne

### IV.1. Relations Sociales et Famille

*   **Types :** Amitié, Amour/Romance, Famille, Rivalité, Haine.
*   **Famille :** Les liens familiaux (parents, enfants, conjoints) sont des modificateurs d'humeur très puissants (ex: la mort d'un conjoint provoque un malus d'humeur massif).
*   **Évolution :** Basée sur les interactions quotidiennes, les traits de caractère et les événements partagés.

### IV.2. Gestion Quotidienne (Travail)

*   **Assignation des Tâches :** Manuelle ou Automatique, basée sur les compétences.
*   **Système de Priorités :** Tâches exécutées selon une priorité (1 à 4) pour micro-gérer les travaux cruciaux. (L'implémentation technique de l'échelle de priorité est dans TDD-04).
*   **Zones de Travail :** Restriction des tâches à des zones spécifiques pour optimiser l'organisation et les déplacements.
*   **Horaires :** Le joueur peut définir des horaires de sommeil, de travail et de loisirs pour chaque colon, influençant directement la satisfaction des besoins.

## V. Historique de Consolidation

Ce document consolide les anciens fichiers :
*   `03_systeme_personnages/01_creation_et_historique.md`
*   `03_systeme_personnages/02_competences_et_traits.md`
*   `03_systeme_personnages/03_besoins_et_humeur.md`
*   `03_systeme_personnages/04_sante_et_blessures.md`
*   `03_systeme_personnages/05_relations_sociales.md`
*   `03_systeme_personnages/06_equipement_et_inventaire.md`
*   `03_systeme_personnages/07_cycle_de_vie.md`
*   `03_systeme_personnages/08_gestion_quotidienne.md`
