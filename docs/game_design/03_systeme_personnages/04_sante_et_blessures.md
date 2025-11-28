# Santé et Blessures des Personnages - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [game-design, personnages, santé, blessures, maladies, médecine, survie, médiéval]

Ce document détaille le système de **santé des personnages** dans GuildForge Mobile, incluant les blessures, les maladies, les infections, la localisation des dégâts sur les parties du corps et les traitements médicaux disponibles. Le système est conçu pour être réaliste et ancré dans un contexte médiéval, sans recours à la magie ou à des technologies anachroniques. La gestion efficace de la santé est un pilier fondamental pour la survie et la prospérité de la colonie.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Principes Généraux](#2-principes-généraux)
    *   [Localisation des Blessures](#localisation-des-blessures)
    *   [Conditions Multiples](#conditions-multiples)
    *   [Progression des Maladies](#progression-des-maladies)
    *   [Compétence Médicale](#compétence-médicale)
3.  [Composants du Système de Santé](#3-composants-du-système-de-santé)
    *   [Types de Blessures](#31-types-de-blessures)
    *   [Maladies](#32-maladies)
    *   [Conditions Chroniques et Traits de Santé](#33-conditions-chroniques-et-traits-de-santé)
4.  [Traitements et Soins Médicaux](#4-traitements-et-soins-médicaux)
    *   [Ressources Médicales](#41-ressources-médicales)
    *   [Processus de Soin](#42-processus-de-soin)
5.  [Impact sur le Gameplay et Interface](#5-impact-sur-le-gameplay-et-interface)
6.  [Références](#6-références)

---

## 1. Introduction

Inspiré par la complexité de jeux comme RimWorld, le système de santé de GuildForge Mobile vise à simuler de manière réaliste les conditions physiques des colons. La gestion de la santé est un pilier de la survie de la colonie, influençant directement l'efficacité et le bien-être des personnages. Le système est ancré dans un réalisme médiéval, excluant toute forme de guérison magique ou de technologie anachronique. Il est étroitement lié aux [besoins et à l'humeur des personnages](./03_besoins_et_humeur.md), ainsi qu'aux [compétences médicales](./02_competences_et_traits.md) des colons.

## 2. Principes Généraux

Le système de santé repose sur plusieurs concepts fondamentaux pour offrir une expérience de jeu riche et stratégique :

### Localisation des Blessures

Les dégâts affectent des parties spécifiques du corps (tête, torse, bras, jambes, organes internes), chacune ayant ses propres points de vie et des conséquences variées en cas de blessure. Par exemple, une blessure à la jambe réduira la vitesse de déplacement, tandis qu'une blessure à la tête pourra affecter la conscience ou les capacités intellectuelles.

### Conditions Multiples

Un colon peut souffrir simultanément de plusieurs blessures, maladies ou conditions chroniques. La combinaison de ces affections peut créer des situations complexes nécessitant une gestion prioritaire.

### Progression des Maladies

Les maladies évoluent par stades et peuvent s'aggraver si elles ne sont pas traitées, avec des périodes d'incubation, des symptômes et une létalité propres à chacune. La détection précoce et le traitement sont essentiels.

### Compétence Médicale

L'efficacité des traitements, la vitesse de guérison et la probabilité de succès des opérations dépendent directement de la [compétence **Médecine**](./02_competences_et_traits.md) du soignant. Un médecin expérimenté sera plus apte à sauver des vies et à éviter des complications.

## 3. Composants du Système de Santé

### 3.1. Types de Blessures

Les blessures sont généralement le résultat de combats, d'accidents (chutes, effondrements) ou d'attaques d'animaux. Elles sont classées selon leur nature et leurs effets :

*   **Coupures/Lacérations :** Causées par des armes tranchantes ou des objets pointus, elles provoquent des saignements (hémorragies) et présentent un risque élevé d'infection si elles ne sont pas nettoyées et bandées rapidement.
*   **Contusions/Fractures :** Résultant d'impacts contondants (coups, chutes), elles réduisent la mobilité, la manipulation et la force du personnage. Les fractures nécessitent une immobilisation (attelle) pour guérir correctement.
*   **Brûlures :** Infligées par le feu ou des liquides chauds, elles causent une douleur intense, réduisent l'efficacité du membre affecté et sont très susceptibles de s'infecter.
*   **Perte de Sang :** Une hémorragie non traitée peut rapidement entraîner un évanouissement, un choc et éventuellement la mort. La gestion rapide des saignements est une priorité absolue.

### 3.2. Maladies

Les maladies peuvent être contractées via l'environnement (mauvaise hygiène, climat), la consommation d'aliments ou d'eau contaminés, ou le contact avec d'autres malades. Elles varient en gravité et en contagiosité :

*   **Exemples Courants :** Fièvre, dysenterie, grippe, infections de plaies. Ces maladies peuvent affaiblir les colons et réduire leur productivité.
*   **Maladies Graves :** Des affections rares et dévastatrices comme la peste ou la lèpre peuvent survenir, menaçant l'ensemble de la colonie et nécessitant des mesures d'isolement et des traitements intensifs.

### 3.3. Conditions Chroniques et Traits de Santé

Certains personnages peuvent avoir des conditions de santé à long terme ou des traits génétiques qui influencent leur bien-être de manière permanente ou récurrente :

*   **Origines :** Ces conditions peuvent être innées (ex: asthme, faiblesse immunitaire), acquises suite à des blessures mal soignées (ex: cicatrice permanente, douleur chronique, perte d'un membre), ou résulter d'événements spécifiques (ex: traumatisme psychologique).
*   **Impact :** Elles peuvent conférer des malus permanents (réduction de la vitesse, de la force, de la capacité de travail), des douleurs récurrentes ou des vulnérabilités à certaines maladies. Elles ajoutent une couche de complexité à la gestion des personnages.

## 4. Traitements et Soins Médicaux

Les soins médicaux dans GuildForge Mobile sont limités aux connaissances et ressources de l'époque médiévale, mettant l'accent sur l'ingéniosité et la gestion des ressources.

### 4.1. Ressources Médicales

*   **Herbes Médicinales :** Base de la pharmacopée médiévale, utilisées pour traiter les maladies légères, réduire la douleur et accélérer la guérison. Elles doivent être récoltées ou cultivées.
*   **Bandages :** Essentiels pour arrêter les saignements et protéger les plaies des infections. Peuvent être fabriqués à partir de tissus.
*   **Antiseptiques Rudimentaires :** Préparations à base de vin, de vinaigre ou de certaines plantes pour nettoyer les blessures et prévenir les infections. Leur efficacité est limitée mais cruciale.
*   **Attelles :** Utilisées pour immobiliser les membres fracturés et favoriser leur guérison. Fabriquées à partir de bois et de tissus.
*   **Outils Chirurgicaux :** Instruments rudimentaires (couteaux, scies) nécessaires pour les interventions chirurgicales complexes, avec un risque élevé de complications.

### 4.2. Processus de Soin

Le traitement d'un patient se déroule en plusieurs étapes, nécessitant une planification et des compétences :

1.  **Diagnostic :** Un colon avec une [compétence **Médecine**](./02_competences_et_traits.md) suffisante doit d'abord examiner le patient pour identifier les blessures et maladies. Un diagnostic précis est crucial pour un traitement efficace.
2.  **Traitement :** Le soignant applique ensuite les ressources médicales appropriées. L'efficacité du traitement dépend de sa compétence, de la qualité des fournitures et de la gravité de l'affection. Les traitements peuvent inclure le nettoyage des plaies, l'application de bandages, l'administration d'herbes ou la réalisation d'opérations chirurgicales.
3.  **Repos et Rétablissement :** Les colons blessés ou malades nécessitent du repos dans un lit, de préférence dans un environnement propre et calme (infirmerie), pour récupérer. La vitesse de guérison est influencée par la qualité des soins, l'alimentation, les traits du colon et l'environnement.

## 5. Impact sur le Gameplay et Interface

La santé a un impact direct sur la productivité, le moral et la survie des colons. Un onglet dédié dans l'interface du personnage affichera un résumé détaillé de son état de santé, incluant chaque blessure, maladie et condition, ainsi que l'état de chaque partie du corps. Cela permet au joueur de prioriser les soins et de gérer efficacement les ressources médicales de la colonie. Des icônes et des barres de progression visuelles indiqueront la gravité des affections et l'avancement de la guérison.

## 6. Références

*   [Compétences et Traits des Personnages](./02_competences_et_traits.md)
*   [Besoins et Humeur des Personnages](./03_besoins_et_humeur.md)
*   [README du Système Personnages](./README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

