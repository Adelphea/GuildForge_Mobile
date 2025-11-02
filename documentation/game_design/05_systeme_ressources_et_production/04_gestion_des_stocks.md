# Gestion des Stocks - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [game-design, stocks, inventaire, stockage, logistique, péremption, priorisation, médiéval]

Ce document détaille le système de **gestion des stocks** dans GuildForge Mobile, incluant le stockage, la priorisation, la péremption des denrées et l'organisation des entrepôts. Une gestion efficace de l'inventaire est cruciale pour la logistique, la production et la survie des colons, s'intégrant directement aux [structures et mobilier](../04_systeme_construction/01_structures_et_mobilier.md) et à la [collecte et extraction de ressources](./01_collecte_et_extraction.md).

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Principes de l'Inventaire](#2-principes-de-linventaire)
3.  [Mécaniques de Gestion des Stocks](#3-mécaniques-de-gestion-des-stocks)
    *   [Zones de Stockage](#31-zones-de-stockage)
    *   [Transport des Objets](#32-transport-des-objets)
    *   [Capacité de Stockage](#33-capacité-de-stockage)
    *   [Péremption et Détérioration](#34-péremption-et-détérioration)
4.  [Interface d'Inventaire](#4-interface-dinventaire)
5.  [Références](#5-références)

---

## 1. Introduction

La gestion de l'inventaire est un aspect fondamental de GuildForge Mobile, essentiel pour le suivi et l'organisation de toutes les ressources et objets collectés, produits ou achetés par la colonie. Ce système assure que les matériaux nécessaires sont disponibles pour la [construction](../04_systeme_construction/README.md) et l'[artisanat](./03_artisanat_et_fabrication.md), que la nourriture est stockée correctement pour éviter la péremption, et que l'ensemble de la logistique de la colonie fonctionne de manière optimale. Une mauvaise gestion des stocks peut entraîner des pénuries, des pertes et une baisse du [moral des colons](../03_systeme_personnages/03_besoins_et_humeur.md).

## 2. Principes de l'Inventaire

Le système d'inventaire repose sur plusieurs principes clés pour garantir une gestion efficace et intuitive, permettant au joueur de contrôler précisément les flux de ressources :

*   **Centralisation :** Toutes les ressources et objets sont stockés dans des [zones de stockage désignées](../04_systeme_construction/01_structures_et_mobilier.md) par le joueur, offrant une vue d'ensemble claire de l'ensemble des biens de la colonie.
*   **Visibilité :** Le joueur a accès à une interface d'inventaire détaillée, lui permettant de visualiser tous les objets disponibles, leur quantité, leur qualité et leur emplacement. Des filtres et tris sont disponibles pour faciliter la recherche.
*   **Priorisation :** Les zones de stockage peuvent être configurées pour prioriser certains types d'objets ou pour définir des niveaux de priorité pour le transport et l'utilisation. Cela permet d'acheminer les ressources critiques là où elles sont le plus nécessaires.
*   **Détérioration :** Certains objets, notamment la nourriture et les matériaux organiques, peuvent se détériorer s'ils ne sont pas stockés correctement (par exemple, dans un réfrigérateur ou un cellier) [1]. Cette mécanique ajoute un défi de gestion et de planification.

## 3. Mécaniques de Gestion des Stocks

### 3.1. Zones de Stockage

Les joueurs définissent des [zones de stockage](../04_systeme_construction/01_structures_et_mobilier.md) sur la carte, qui peuvent être spécialisées pour optimiser l'organisation et la conservation des ressources. Chaque zone peut avoir des règles spécifiques :

*   **Dépôt Général :** Pour toutes les ressources et objets (bois, pierre, outils, armes, nourritures,...). C'est la zone de stockage par défaut pour les objets sans affectation spécifique.
*   **Réfrigérateur/Garde-manger :** Pour la nourriture et les objets périssables, ralentissant leur détérioration grâce à des conditions de température contrôlées [1]. Nécessite des [structures spécifiques](../04_systeme_construction/01_structures_et_mobilier.md) pour maintenir la fraîcheur.
*   **Armurerie :** Pour les armes et armures, potentiellement sécurisée pour éviter le vol ou l'accès non autorisé. Permet de garder l'équipement de combat à portée de main.
*   **Décharge :** Pour les objets indésirables, les déchets ou les matériaux à recycler. Une décharge mal gérée peut affecter le [moral des colons](../03_systeme_personnages/03_besoins_et_humeur.md) et l'hygiène de la colonie.

### 3.2. Transport des Objets

Les colons sont responsables du transport des objets au sein de la colonie, guidés par les priorités définies par le joueur et les besoins des ateliers ou des chantiers. Ce processus est géré par le [système de gestion quotidienne des personnages](../03_systeme_personnages/08_gestion_quotidienne.md).

*   **Collecte :** Après l'[extraction ou la production](./01_collecte_et_extraction.md), les colons transportent les objets vers les zones de stockage désignées [3].
*   **Approvisionnement :** Les colons transportent les matériaux nécessaires aux [établis de production](./03_artisanat_et_fabrication.md) ou aux [chantiers de construction](../04_systeme_construction/01_structures_et_mobilier.md) [4].
*   **Priorités de Transport :** Le joueur peut définir des priorités pour le transport, assurant que les objets critiques sont déplacés en premier, par exemple, la nourriture vers le garde-manger ou les matériaux de construction vers un chantier urgent.

### 3.3. Capacité de Stockage

La capacité de stockage est limitée par la taille des zones de stockage et la présence de conteneurs (coffres, étagères, tonneaux,...). Les joueurs doivent planifier l'expansion de leur stockage à mesure que la colonie grandit et que la production augmente, en construisant de nouvelles [structures de stockage](../04_systeme_construction/01_structures_et_mobilier.md).

### 3.4. Péremption et Détérioration

Les objets organiques (nourriture, cadavres) et certains matériaux peuvent se périmer ou se détériorer avec le temps s'ils ne sont pas stockés dans des conditions appropriées. Cela ajoute une couche de défi et de réalisme à la gestion des ressources, obligeant le joueur à construire des installations de stockage adéquates et à gérer les stocks de manière proactive pour minimiser les pertes. La vitesse de péremption est influencée par la [température et le confort](../04_systeme_construction/03_temperature_et_confort.md) [1].

## 4. Interface d'Inventaire

Une interface dédiée permet au joueur de gérer efficacement les stocks de la colonie, offrant une vue d'ensemble et des outils de gestion précis :

*   **Vue d'Ensemble :** Visualisation de l'inventaire global de la colonie, avec des totaux par catégorie de ressources, permettant une évaluation rapide des disponibilités.
*   **Filtrage et Tri :** Possibilité de filtrer les objets par type, catégorie, emplacement ou état (par exemple, périssable, endommagé), facilitant la recherche d'éléments spécifiques.
*   **Configuration des Zones :** Définition des règles de stockage pour chaque zone (quels objets sont autorisés, quelle priorité), offrant un contrôle granulaire sur l'organisation.
*   **Détails des Objets :** Consultation des détails de chaque objet (quantité, qualité, durabilité, date de péremption), essentielle pour prendre des décisions éclairées sur leur utilisation ou leur vente.

## 5. Références

[1] [Température et Confort](../04_systeme_construction/03_temperature_et_confort.md)
[2] [Structures et Mobilier](../04_systeme_construction/01_structures_et_mobilier.md)
[3] [Collecte et Extraction de Ressources](./01_collecte_et_extraction.md)
[4] [Artisanat et Fabrication](./03_artisanat_et_fabrication.md)
*   [README du Système de Ressources et Production](./README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

