# Agriculture et Élevage - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [game-design, agriculture, élevage, nourriture, ressources, saisons, fertilité, médiéval]

Ce document décrit les systèmes d'**agriculture** (cultures, saisons, fertilité des sols) et d'**élevage** (animaux domestiques, reproduction, produits animaux) dans GuildForge Mobile. Ces mécaniques sont essentielles pour assurer la subsistance de la colonie en fournissant une source stable de nourriture et de matériaux, et s'intègrent étroitement avec les systèmes de [collecte et extraction](./01_collecte_et_extraction.md) et de [gestion des stocks](./04_gestion_des_stocks.md).

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Système d'Agriculture](#2-système-dagriculture)
    *   [Champs et Cultures](#21-champs-et-cultures)
    *   [Saisons et Climat](#22-saisons-et-climat)
    *   [Fertilité des Sols](#23-fertilité-des-sols)
3.  [Système d'Élevage](#3-système-délevage)
    *   [Animaux Domestiques](#31-animaux-domestiques)
    *   [Reproduction et Croissance](#32-reproduction-et-croissance)
    *   [Produits Animaux](#33-produits-animaux)
4.  [Interactions et Dépendances](#4-interactions-et-dépendances)
5.  [Références](#5-références)

---

## 1. Introduction

L'agriculture et l'élevage sont des piliers fondamentaux de la survie et du développement de toute colonie dans GuildForge Mobile. Ces systèmes permettent aux joueurs de produire de la nourriture, des matériaux et d'autres ressources de manière renouvelable, réduisant ainsi la dépendance à la [collecte et à la chasse](./01_collecte_et_extraction.md). Une gestion efficace de ces activités est cruciale pour le bien-être des colons et la croissance de la colonie, influençant directement leur [santé et leur humeur](../03_systeme_personnages/03_besoins_et_humeur.md).

## 2. Système d'Agriculture

Le système agricole permet la culture de diverses plantes pour la nourriture, les fibres ou d'autres usages. Il nécessite une planification attentive et une adaptation aux conditions environnementales.

### 2.1. Champs et Cultures

Les colons doivent préparer des parcelles de terre pour la culture, en tenant compte de la qualité du sol et de la disponibilité de l'eau. Une variété de cultures sera disponible, incluant des céréales (blé, orge), des légumes (carottes, choux) et des plantes à fibres (lin, chanvre). Chaque culture a des exigences spécifiques en termes de climat, de saison de croissance et de fertilité du sol. Les colons plantent les graines, entretiennent les cultures (arrosage, désherbage) et récoltent les produits. Ces tâches nécessitent la [compétence Agriculture](../03_systeme_personnages/02_competences_et_traits.md) [1].

### 2.2. Saisons et Climat

Les saisons et le climat ont un impact direct sur l'agriculture, rendant la planification saisonnière indispensable :

*   **Saisons de Croissance :** Chaque culture a une saison de croissance optimale. Planter hors saison peut entraîner un rendement réduit ou la perte de la récolte.
*   **Conditions Météorologiques :** La pluie est essentielle pour l'arrosage, mais des événements extrêmes comme la sécheresse ou les inondations peuvent dévaster les champs [2].
*   **Température :** Les températures extrêmes (gel, canicule) peuvent endommager ou détruire les cultures [3].

### 2.3. Fertilité des Sols

La fertilité du sol varie selon les tuiles et peut être améliorée ou dégradée par les actions du joueur :

*   **Fertilité Naturelle :** Certaines zones sont naturellement plus fertiles que d'autres, offrant un avantage initial.
*   **Amélioration :** L'utilisation d'engrais (fumier animal, compost) peut améliorer la fertilité du sol, augmentant ainsi les rendements et la vitesse de croissance.
*   **Dégradation :** Une surexploitation sans rotation des cultures ou sans apport d'engrais peut dégrader la fertilité du sol au fil du temps, nécessitant des périodes de jachère ou des investissements en fertilisants.

## 3. Système d'Élevage

L'élevage permet de domestiquer des animaux pour obtenir de la nourriture, des matériaux ou des services. C'est une source renouvelable et contrôlable de ressources.

### 3.1. Animaux Domestiques

Les animaux peuvent être apprivoisés dans la nature (nécessite la [compétence Animaux](../03_systeme_personnages/02_competences_et_traits.md) [1]), achetés à des marchands ou élevés à partir de la reproduction. Les types d'animaux incluent des animaux de ferme (poulets, moutons, vaches, cochons) pour la viande, le lait, la laine, et des animaux de bât (chevaux, ânes) pour le transport [4]. Les animaux ont des besoins en nourriture, en abri et en soins. Leur bien-être influence leur productivité et leur reproduction.

### 3.2. Reproduction et Croissance

La reproduction est essentielle pour maintenir et augmenter le cheptel. Les animaux peuvent se reproduire si les conditions sont favorables (présence d'un couple, abri adéquat, nourriture suffisante). Les jeunes animaux grandissent et atteignent l'âge adulte, devenant alors productifs ou aptes à la reproduction. La gestion de la reproduction est une stratégie à long terme pour la colonie.

### 3.3. Produits Animaux

Les animaux fournissent une variété de produits essentiels :

*   **Viande :** Source de nourriture obtenue par l'abattage. La quantité et la qualité de la viande dépendent de l'animal.
*   **Lait/Œufs :** Produits collectés régulièrement sans abattre l'animal, offrant une source de nourriture constante.
*   **Laine/Peaux :** Matériaux utilisés pour l'[artisanat et la fabrication de vêtements](./03_artisanat_et_fabrication.md) [5].
*   **Transport :** Les animaux de bât peuvent être utilisés pour transporter des ressources lors des expéditions, facilitant les [voyages et caravanes](../01_systeme_monde/04_voyages_et_caravanes.md) [4].

## 4. Interactions et Dépendances

Les systèmes d'agriculture et d'élevage sont étroitement liés à d'autres systèmes du jeu, formant un écosystème interdépendant :

*   **Collecte et Extraction :** Les ressources initiales (graines, animaux sauvages) proviennent de la [collecte](./01_collecte_et_extraction.md) [6].
*   **Compétences des Personnages :** Les [compétences Agriculture et Animaux](../03_systeme_personnages/02_competences_et_traits.md) sont cruciales pour l'efficacité de ces systèmes [1].
*   **Besoins des Personnages :** Fournissent la nourriture nécessaire à la survie des colons, influençant directement leurs [besoins et leur humeur](../03_systeme_personnages/03_besoins_et_humeur.md) [2].
*   **Artisanat et Fabrication :** Les produits agricoles et animaux sont des matières premières pour l'[artisanat](./03_artisanat_et_fabrication.md) [5].
*   **Cycle de Vie :** Les plantes et les animaux ont leurs propres [cycles de vie](../03_systeme_personnages/07_cycle_de_vie.md) qui interagissent avec les saisons et les actions des colons [7].
*   **Température et Confort :** Les conditions climatiques et la qualité des abris influencent la croissance des cultures et le bien-être des animaux [3].

## 5. Références

[1] [Compétences et Traits des Personnages](../03_systeme_personnages/02_competences_et_traits.md)
[2] [Besoins et Humeur des Personnages](../03_systeme_personnages/03_besoins_et_humeur.md)
[3] [Température et Confort](../04_systeme_construction/03_temperature_et_confort.md)
[4] [Voyages et Caravanes](../01_systeme_monde/04_voyages_et_caravanes.md)
[5] [Artisanat et Fabrication](./03_artisanat_et_fabrication.md)
[6] [Collecte et Extraction de Ressources](./01_collecte_et_extraction.md)
[7] [Cycle de Vie des Personnages](../03_systeme_personnages/07_cycle_de_vie.md)
*   [README du Système de Ressources et Production](./README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

