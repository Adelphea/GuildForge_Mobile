# Création et Historique des Personnages - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [game-design, personnages, colons, création, personnalisation, historique, compétences, traits, mobile]

Ce document décrit le processus de création des personnages (colons, PNJ) dans GuildForge Mobile, incluant la génération de leurs historiques (backstories) et leur personnalisation. Il vise à offrir aux joueurs une interface intuitive pour façonner les membres fondateurs de leur colonie, en équilibrant la liberté de création avec les contraintes de l'univers médiéval du jeu, tout en étant optimisé pour une interface mobile.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Mécaniques et Systèmes de Personnalisation](#2-mécaniques-et-systèmes-de-personnalisation)
    *   [Personnalisation de l'Apparence](#21-personnalisation-de-lapparence)
    *   [Compétences et Passions](#22-compétences-et-passions)
    *   [Traits de Caractère](#23-traits-de-caractère)
    *   [Historique (Backstory)](#24-historique-backstory)
    *   [Générateur de Profil Aléatoire](#25-générateur-de-profil-aléatoire)
    *   [Enregistrement et Chargement de Colons](#26-enregistrement-et-chargement-de-colons)
3.  [Interface Utilisateur (UI) et Expérience Utilisateur (UX)](#3-interface-utilisateur-ui-et-expérience-utilisateur-ux)
4.  [Équilibrage et Dépendances Techniques](#4-équilibrage-et-dépendances-techniques)
5.  [Références](#5-références)

---

## 1. Introduction

Le système de création et de personnalisation des colons est une étape cruciale du début de partie, permettant aux joueurs de façonner les membres fondateurs de leur colonie. Ce module offre un contrôle sur l'apparence, les compétences, les traits de caractère et l'historique de chaque colon, tout en étant optimisé pour une interface mobile. L'objectif est de fournir une expérience riche et immersive dès la phase de création, influençant directement la [Narration Émergente](../../verite_unique/glossaire.md#narration-émergente) du jeu.

## 2. Mécaniques et Systèmes de Personnalisation

### 2.1. Personnalisation de l'Apparence

Les joueurs peuvent modifier l'apparence de chaque colon, y compris :

*   **Nom :** Prénom et nom de famille.
*   **Genre :** Homme ou Femme.
*   **Âge :** L'âge influence les compétences de départ, la santé et la probabilité de certains traits. Les tranches d'âge (jeune adulte, adulte, âgé) auront des impacts spécifiques sur les statistiques et le cycle de vie du colon.
*   **Apparence Physique :** Type de corps, couleur de peau, coiffure et couleur de cheveux, forme du visage, pilosité faciale. Ces éléments sont principalement esthétiques mais contribuent à l'immersion. Les vêtements de départ pourront être choisis parmi une sélection de tenues de base, adaptées au scénario et au biome choisi.

### 2.2. Compétences et Passions

Chaque colon possède un ensemble de compétences qui déterminent son efficacité dans diverses tâches. Les joueurs disposent d'un nombre limité de points à distribuer. Les compétences sont principalement définies lors de la création du colon et évoluent par la pratique en jeu.

*   **Système de Points :** Les joueurs allouent des points pour augmenter les niveaux de compétence de départ.
*   **Passions :** Une compétence peut être marquée comme une "passion" (mineure ou majeure), ce qui accélère son apprentissage en jeu. Choisir une passion a un coût en points de création.

### 2.3. Traits de Caractère

Les **traits de caractère**, définis par les `Traits de Caractère` (voir [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md#traits-de-caractère)), sont des caractéristiques innées ou acquises qui affectent directement le comportement et les capacités d'un colon. Ils ont un impact significatif sur l'humeur, les interactions sociales, la productivité et peuvent même débloquer des actions spéciales. Par exemple, un trait comme "Optimiste" pourrait donner un bonus d'humeur permanent, tandis qu'un trait "Pyromane" pourrait créer des défis de gestion spécifiques. Le joueur pourra choisir les traits de caractère de ses colons, en respectant les règles d'équilibrage du jeu. De plus, chaque colon acquiert un trait de caractère à chaque étape de vie jusqu'à l'âge adulte, pour un maximum de trois traits comme tout colon adulte.

### 2.4. Historique (Backstory)

L'**historique**, défini par le `BackstoryDef` (voir [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md#historique-backstory)), est un élément fondamental qui établit le passé narratif d'un colon (par exemple, son enfance ou sa carrière d'adulte). Ce contexte narratif justifie non seulement la personnalité du colon, mais détermine également ses compétences de départ, ses passions et ses limitations.

Techniquement, un `BackstoryDef` influence directement les attributs du colon via plusieurs champs :
*   **`skillGains`**: Attribue des points de compétence de départ dans des domaines spécifiques (ex: un "Forgeron" commencera avec des compétences en artisanat).
*   **`workDisables`**: Peut interdire au colon d'effectuer certains types de travail (ex: un "Noble" pourrait refuser le travail manuel).
*   **`forcedTraits`**: Peut imposer un ou plusieurs `Traits de Caractère` spécifiques qui sont logiquement liés à cet historique (ex: un "Vétéran de guerre" pourrait avoir le trait "Brave").

L'historique est donc un pilier de la narration émergente, car il peut débloquer des événements spécifiques ou des options de dialogue uniques, et il est le principal mécanisme qui façonne le profil initial d'un colon. Il est crucial d'effectuer un filtrage rigoureux et une validation humaine des `BackstoryTranslations` importées de RimWorld pour éliminer toute référence à la science-fiction, au fantastique ou à des éléments non médiévaux, afin de maintenir la cohérence du lore.

### 2.5. Générateur de Profil Aléatoire

Dans le menu de creation de colon, un bouton "Générer aléatoirement" crée un profil de colon complet en respectant les règles d'équilibrage du jeu, assurant la viabilité du groupe de départ. Des règles d'équilibrage sont mises en place pour éviter la création de colons trop puissants ou trop faibles, assurant que chaque colon a des forces et des faiblesses distinctes.

### 2.6. Enregistrement et Chargement de Colons

Les joueurs peuvent enregistrer et réutiliser leurs profils de colons personnalisés dans de futures parties, offrant une rejouabilité accrue et la possibilité de partager des créations.

## 3. Interface Utilisateur (UI) et Expérience Utilisateur (UX)

L'interface de création de colon sera conçue pour être claire et facile à utiliser sur un écran tactile, avec des panneaux dédiés pour chaque aspect de la personnalisation et une mise à jour en temps réel du sprite du colon.

## 4. Équilibrage et Dépendances Techniques

L'équilibrage est crucial pour éviter la création de colons surpuissants ou ingérables. Les paramètres clés incluent le nombre de points de compétence de départ, le coût des passions et l'impact de l'âge. Le système de création de colons est étroitement lié aux systèmes de gestion des compétences, des traits, de la santé et de l'historique. Toutes les définitions (`Ressource de Trait`, `Ressource d'Historique`) seront implémentées en tant que [Custom Resources Godot](../../verite_unique/glossaire.md#custom-resource-godot) pour la modularité et la facilité d'édition, comme défini dans les standards du projet [3, 4].

## 5. Références

[1] [Compétences et Traits](./02_competences_et_traits.md)
[2] [Quêtes et Scénarios](../02_systeme_conteur_ia/03_quetes_et_scenarios.md)
[3] [Gestion des Données Godot](../../verite_unique/gestion_donnees_godot.md)
[4] [Gestion des Données Godot](../../verite_unique/gestion_donnees_godot.md)

