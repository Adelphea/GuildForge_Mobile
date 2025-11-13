# Vision et Conception Globale - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.3
**Tags :** [game-design, GDD, vision, mécaniques, médiéval, mobile, optimisation, lore, équilibrage, direction-artistique]

Ce document centralise la vision globale du jeu GuildForge Mobile, ses principes fondamentaux, et son positionnement unique en tant que "RimWorld-like" médiéval sur mobile. Il sert de référence pour s'assurer que toutes les décisions de game design et de développement restent alignées avec la direction artistique et les objectifs du projet, en tenant compte des contraintes de développement (pas de fantastique/science-fiction, optimisation mobile, développement sans budget).

---

## Table des Matières

1.  [Vision du Jeu](#1-vision-du-jeu)
2.  [Cadre de l'Univers et Lore](#2-cadre-de-lunivers-et-lore)
    *   [Principes Fondamentaux du Lore](#21-principes-fondamentaux-du-lore)
    *   [Concepts Adaptés de RimWorld (Réinterprétation Médiévale)](#concepts-adaptés-de-rimworld-réinterprétation-médiévale)
    *   [Concepts Exclus ou Réinterprétés Radicalement](#concepts-exclus-ou-réinterprétés-radicalement)
3.  [Plateforme et Optimisation](#3-plateforme-et-optimisation)
4.  [Processus de Développement](#4-processus-de-développement)
5.  [Style Visuel et Ambiance](#5-style-visuel-et-ambiance)
    *   [Objectifs](#51-objectifs)
    *   [Style Visuel Détaillé](#52-style-visuel-détaillé)
6.  [Équilibrage du Jeu](#6-équilibrage-du-jeu)
    *   [Principes d'Équilibrage](#61-principes-déquilibrage)
    *   [Mécaniques Clés à Équilibrer](#62-mécaniques-clés-à-équilibrer)
        *   [Économie et Ressources](#économie-et-ressources)
        *   [Gestion des Colons](#gestion-des-colons)
        *   [Combat et Défense](#combat-et-défense)
        *   [Recherche et Arbre des Connaissances](#recherche-et-arbre-des-connaissances)
    *   [Outils et Méthodes d'Équilibrage](#63-outils-et-méthodes-déquilibrage)
    *   [Dépendances et Considérations Techniques](#64-dépendances-et-considérations-techniques)
7.  [Références](#7-références)

---

## 1. Vision du Jeu

GuildForge Mobile est un jeu de gestion de colonie et de survie inspiré de RimWorld, se déroulant dans un univers médiéval. L'objectif est d'offrir une expérience "RimWorld-like" [1] complète sur mobile.

## 2. Cadre de l'Univers et Lore

L'univers est médiéval, dépourvu d'éléments fantastiques ou de science-fiction. Toutes les inspirations, qu'elles soient mécaniques ou conceptuelles, notamment celles issues de RimWorld et de ses mods, seront adaptées pour se conformer à ce cadre. Cela implique de privilégier les savoir-faire, techniques et découvertes de l'époque. L'interprétation du médiéval se veut large, permettant une liberté créative et une exploration des mystères de l'époque, tout en évitant le fantastique et la science-fiction.

### 2.1. Principes Fondamentaux du Lore

*   **Rejet du fantastique et de la science-fiction :** Tous les concepts, objets et mécaniques doivent être plausibles dans un contexte médiéval. Toute inspiration de la science-fiction, du fantastique ou des technologies avancées doit être entièrement réinterprétée ou rejetée pour s'aligner avec ce cadre.
*   **Contexte Narratif :** Le monde de GuildForge est un continent vaste et ancien, fragmenté par des siècles de conflits. Les grandes civilisations d'antan ont laissé place à une mosaïque de petits royaumes et territoires sauvages. Le joueur commence avec un petit groupe de colons, cherchant un nouveau départ dans une région reculée. L'histoire est transmise par des contes et légendes, souvent déformées.

### Concepts Adaptés de RimWorld (Réinterprétation Médiévale)

*   **Narration Émergente via Événements :** Le jeu conserve un Maître du Récit générant des événements dynamiques (raids, maladies, catastrophes naturelles, arrivées de marchands, pèlerins, bandits), mais tous les événements sont ancrés dans le contexte médiéval (ex: pas d'attaques de robots, mais des attaques de loups, de bandits, des épidémies de peste, des famines).
*   **Gestion des Factions et Relations :** Inclure diverses factions (villages voisins, ordres religieux, seigneurs locaux, groupes de bandits) avec des relations dynamiques basées sur le commerce, la diplomatie, les raids et les guerres féodales.

### Concepts Exclus ou Réinterprétés Radicalement

*   **Technologie Avancée (Ultratech, Bionics) :** Exclue. Toute amélioration corporelle serait rudimentaire (prothèses en bois) et non technologique.
*   **Pouvoirs Psychiques / Magie :** Exclue. Les croyances religieuses ou la superstition peuvent influencer l'humeur des colons, mais pas de pouvoirs réels.
*   **Voyages Interstellaires / Vaisseaux Spatiaux :** Exclus. Les voyages se feront à pied, à cheval ou en charrette, sur la carte du monde local.
*   **Créatures Fantastiques / Mutants :** Exclues. Les menaces animales seront des bêtes sauvages (loups, ours, sangliers) ou des animaux domestiques enragés.
*   **Tourelles Automatiques / Armes à Feu Modernes :** Remplacées par des défenses médiévales : archers sur les murs, balistes, trébuchets (si l'échelle le permet), pièges.
*   **Robots :** Exclue. Le travail est manuel ou assisté par des animaux de trait.
*   **Maladies Exotiques / Plagues Spatiales :** Remplacées par des maladies médiévales : peste, dysenterie, grippe, blessures infectées.

## 3. Plateforme et Optimisation

Le jeu est développé principalement pour les appareils mobiles Android, avec une optimisation spécifique pour le Samsung Galaxy A54 5G [2], qui sert de référence pour l'optimisation sur les appareils mobiles Android. Une attention particulière est portée à l'optimisation des performances (CPU, GPU, RAM) pour garantir une expérience fluide, même avec des mécaniques complexes comme la gestion des colons, la construction de base et la génération de monde procédural.

## 4. Processus de Développement

Un aspect unique du projet est son développement entièrement réalisé sur un smartphone, en s'appuyant sur des outils d'IA pour la génération de code, de contenu et de documentation. Le projet est développé sans budget, en utilisant uniquement des outils et des ressources gratuits.

## 5. Style Visuel et Ambiance

Ce document définit la direction artistique visuelle de GuildForge Mobile. L'objectif est de créer une atmosphère immersive et cohérente avec le thème médiéval du jeu, sans éléments fantastiques ni de science-fiction, tout en garantissant que les assets visuels sont optimisés pour les performances sur un appareil mobile. La direction artistique doit soutenir le gameplay, renforcer l'immersion et être réalisable dans le cadre d'un développement mobile-only.

### 5.1. Objectifs

*   Définir un style visuel clair, fonctionnel et esthétiquement agréable, adapté à un jeu de gestion de colonie en 2D isométrique.
*   Établir une palette de couleurs cohérente et significative.
*   Spécifier les types d'assets visuels nécessaires et leurs caractéristiques.

### 5.2. Style Visuel Détaillé

Le style visuel est un **pixel art 2D** avec une **vue isométrique ou de dessus**, rappelant les jeux de gestion de colonie classiques. Les sprites sont détaillés mais suffisamment lisibles sur les petits écrans mobiles. L'objectif est un équilibre entre le charme rétro du pixel art et une clarté fonctionnelle, tout en respectant le cadre médiéval et réaliste du jeu.

La palette de couleurs est **terreuse et naturelle**, inspirée des enluminures médiévales et des paysages ruraux de l'époque. Des tons de vert profond, de brun, de gris pierre et de couleurs de bois dominantes, avec des touches de couleurs plus vives pour les éléments interactifs ou importants (ex: ressources rares, icônes d'état).

L'interface utilisateur est **non-intrusive**, avec des icônes stylisées rappelant les gravures sur bois ou les manuscrits enluminés. La typographie est choisie pour sa lisibilité sur mobile et son adéquation avec le thème médiéval. Les éléments interactifs (boutons, menus) ont un aspect texturé et organique.

Tous les assets sont des sprites 2D optimisés pour les performances mobiles. Cela inclut des personnages animés (colons, PNJ) avec variations, des bâtiments et structures détaillés avec variations de matériaux et étapes de construction, des icônes claires pour objets et ressources, une UI thématique mais fonctionnelle, et des effets visuels (VFX) simples et optimisés.

Pour plus de détails sur l'approche artistique 2D et les animations, veuillez consulter la [Documentation Artistique Générale](../../art/README.md).

## 6. Équilibrage du Jeu

Ce document est dédié aux principes et aux stratégies d'équilibrage du jeu GuildForge Mobile. Il aborde les méthodes utilisées pour assurer une expérience de jeu juste, stimulante et gratifiante pour le joueur, en tenant compte des mécaniques de gestion de colonie et de survie d'inspiration RimWorld dans un univers médiéval.

### 6.1. Principes d'Équilibrage

*   **Progression Cohérente :** Assurer que la difficulté et les récompenses augmentent de manière linéaire ou exponentielle, offrant un sentiment de progression constant et évitant les pics ou les creux de difficulté inattendus.
*   **Choix Significatifs :** Chaque décision du joueur (construction, recherche, gestion des colons, combat) doit avoir un impact perceptible et des conséquences claires sur le gameplay et la narration émergente.
*   **Éviter les Stratégies Dominantes :** Concevoir les systèmes de manière à ce qu'aucune stratégie unique ne soit universellement supérieure, encourageant la diversité, l'expérimentation et la rejouabilité.
*   **Boucle de Feedback Claire :** Fournir au joueur des retours clairs et immédiats sur les conséquences de ses actions, lui permettant d'ajuster ses stratégies et de comprendre les mécanismes du jeu.
*   **Équilibrage Mobile-First :** Toutes les décisions d'équilibrage doivent prendre en compte les contraintes et les spécificités de la plateforme mobile (sessions de jeu plus courtes, interface tactile, performances matérielles).

### 6.2. Mécaniques Clés à Équilibrer

#### Économie et Ressources

L'équilibrage économique est crucial pour la survie et la croissance de la colonie. Il inclut :

*   **Taux de production et de consommation :** Ajustement des rendements des cultures, de la vitesse de collecte des ressources, et des besoins des colons en nourriture, eau, etc.
*   **Valeur des objets et des biens :** Définition des prix de vente et d'achat pour le commerce, influençant les décisions d'artisanat et d'exploration.
*   **Coûts de construction et d'artisanat :** Détermination des ressources nécessaires pour bâtir des structures et fabriquer des objets, en lien avec leur utilité et leur puissance.

#### Gestion des Colons

Les colons sont le cœur de la colonie. Leur gestion doit être à la fois gratifiante et exigeante :

*   **Besoins et Humeur :** Équilibrage de la fréquence et de l'intensité des besoins (faim, sommeil, joie, hygiène) et de leur impact sur l'humeur et la productivité. Les pensées positives/négatives doivent avoir des effets proportionnels.
*   **Compétences et Traits :** Définition de la progression des compétences, de l'impact des traits de caractère (positifs et négatifs) sur les performances et les interactions sociales.
*   **Événements Aléatoires :** Impact des maladies, blessures, et autres événements aléatoires sur la santé et le moral des colons, nécessitant des réponses stratégiques du joueur.

#### Combat et Défense

Le système de combat doit offrir des défis variés et des opportunités stratégiques :

*   **Statistiques des entités :** Équilibrage des points de vie, dégâts, armure, vitesse d'attaque des armes, armures, créatures et ennemis.
*   **Fréquence et difficulté des menaces :** Ajustement de la fréquence et de la puissance des attaques de bandits, créatures sauvages ou factions hostiles en fonction de la progression du joueur.
*   **Efficacité des défenses :** Équilibrage des structures défensives (murs, pièges, tours de guet, herses) et de leur coût. Les balistes sont des armes de siège avancées, disponibles plus tard dans le jeu, et nécessitant des recherches et des ressources importantes. Elles sont conçues pour la défense de base contre des menaces de grande envergure (sièges, créatures massives) et non pour le combat de routine, nécessitant des ressources et des recherches importantes.

#### Recherche et Arbre des Connaissances

Le Système de Recherche et d'Apprentissage doit offrir un sentiment de progrès et de déblocage significatif :

*   **Coût et temps des savoirs/découvertes :** Définition des points de connaissances nécessaires et du temps requis pour chaque projet, en fonction de son impact.
*   **Impact des savoirs :** S'assurer que les savoirs, techniques, innovations ou découvertes débloqués offrent des avantages clairs et tangibles (nouvelles constructions, recettes, améliorations de statistiques).

### 6.3. Outils et Méthodes d'Équilibrage

*   **Feuilles de Calcul Détaillées :** Utilisation de tableurs pour modéliser les systèmes économiques, les statistiques de combat, les courbes de progression des colons et de la recherche. Ces modèles permettent de simuler l'impact des changements de valeurs.
*   **Tests de Jeu (Playtesting) :** Collecte de retours de joueurs (internes et externes) pour identifier les déséquilibres perçus, les points de frustration et les stratégies inattendues.
*   **Analyse de Données de Jeu :** Si possible, implémentation d'outils d'analyse pour collecter des données sur le comportement des joueurs (taux de survie, utilisation des objets, progression) afin d'informer les ajustements d'équilibrage.
*   **Itérations Rapides :** Mettre en place un processus permettant des ajustements rapides et des tests itératifs pour affiner l'équilibrage.

### 6.4. Dépendances et Considérations Techniques

*   **Paramètres Configurables :** Le jeu doit être conçu avec des paramètres d'équilibrage facilement configurables (via des fichiers Godot Resources, JSON ou CSV), comme détaillé dans `data_driven_design.md` [3], pour faciliter les ajustements rapides sans nécessiter de recompilation du code.

## 7. Références

[1] [Glossaire du projet GuildForge Mobile](../../verite_unique/glossaire.md#rimworld-like)
[2] [Spécifications techniques du Samsung Galaxy A54 5G](https://www.gsmarena.com/samsung_galaxy_a54-12070.php)
[3] [Conception Axée sur les Données (Data Driven Design)](../../verite_unique/gestion_donnees_godot.md#conception-axée-sur-les-données-data-driven-design)

