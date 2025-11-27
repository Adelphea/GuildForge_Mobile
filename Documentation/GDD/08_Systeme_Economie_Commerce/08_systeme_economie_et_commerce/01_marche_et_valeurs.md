# Marché et Valeurs - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [game-design, économie, marché, valeurs, offre, demande, commerce, médiéval]

Ce document décrit le fonctionnement du **marché interne et externe** dans GuildForge Mobile, la détermination de la valeur des biens et des services, et l'impact de l'offre et de la demande sur l'économie du jeu. Il est essentiel pour la prospérité de la colonie et ses interactions commerciales, s'intégrant au système de [commerce et négociation](./02_commerce_et_negociation.md).

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Principes du Marché](#2-principes-du-marché)
3.  [Facteurs Influant sur la Valeur](#3-facteurs-influant-sur-la-valeur)
4.  [Interface du Marché](#4-interface-du-marché)
5.  [Références](#5-références)

---

## 1. Introduction

Le système économique de GuildForge Mobile simule les dynamiques d'un marché médiéval, où la valeur des biens est influencée par la rareté, la production et les besoins. Comprendre ces mécaniques est crucial pour le joueur afin de gérer efficacement les [ressources de sa colonie](../05_systeme_ressources_et_production/README.md), d'optimiser la production et de maximiser les profits lors des échanges. Ce système vise à créer une expérience économique réaliste et stimulante, où les décisions du joueur ont des conséquences tangibles.

## 2. Principes du Marché

Le marché dans GuildForge Mobile est un écosystème dynamique régi par plusieurs principes fondamentaux qui influencent les prix et la disponibilité des biens :

*   **Valeur Intrinsèque des Biens :** Chaque objet possède une valeur de base déterminée par sa rareté, le coût de ses matériaux ([collecte et extraction](../05_systeme_ressources_et_production/01_collecte_et_extraction.md)) et le temps/compétence nécessaire à sa fabrication ([artisanat et fabrication](../05_systeme_ressources_et_production/03_artisanat_et_fabrication.md)) [1]. Cette valeur sert de référence pour les fluctuations du marché.
*   **Offre et Demande :** La valeur des biens fluctue en fonction de l'offre (ce que la colonie produit et ce qui est disponible chez les marchands) et de la demande (ce que les marchands recherchent ou ce dont la colonie a besoin). Un surplus de production fera baisser les prix, tandis qu'une pénurie les fera monter.
*   **Marchands Itinérants :** Des marchands visitent périodiquement la colonie, offrant d'acheter des ressources excédentaires et de vendre des biens rares ou nécessaires. Leurs stocks, leurs préférences et leurs prix varient en fonction de leur origine et des événements mondiaux [2].
*   **Factions Voisines :** Les relations avec les [factions voisines](../01_systeme_monde/03_factions_et_relations.md) peuvent ouvrir des routes commerciales permanentes ou des opportunités de troc spécifiques, influençant les prix et la disponibilité des biens [3]. De bonnes relations peuvent débloquer des offres exclusives.
*   **Monnaie :** Bien que le troc direct de ressources soit privilégié pour les petites transactions, une forme de monnaie (par exemple, des pièces d'or ou d'argent) est utilisée pour faciliter les échanges, notamment pour les biens de grande valeur ou les services. La monnaie peut être obtenue par la vente de biens ou la réalisation de quêtes.

## 3. Facteurs Influant sur la Valeur

Plusieurs facteurs peuvent modifier la valeur perçue et réelle des biens, ajoutant de la profondeur au système économique :

*   **Qualité :** Les objets de meilleure qualité (fabriqués par des [artisans compétents](../03_systeme_personnages/02_compétences_et_traits.md)) ont une valeur plus élevée [1]. Un objet de maître se vendra bien plus cher qu'un objet de qualité standard.
*   **Durabilité :** Les objets en bon état ou neufs valent plus cher que ceux endommagés ou usés. Les marchands seront moins enclins à acheter des biens en mauvais état.
*   **Rareté :** Les ressources difficiles à obtenir ou les objets uniques ont une valeur intrinsèquement plus élevée. La découverte de gisements rares ou d'artefacts anciens peut générer une richesse considérable.
*   **Saisonnalité :** Certains biens (par exemple, les produits agricoles) peuvent voir leur valeur varier en fonction des saisons. Les denrées hors saison seront plus chères, tandis que les produits de saison seront plus abordables.
*   **Événements :** Des [événements aléatoires](../02_systeme_conteur_ia/02_evenements_aleatoires.md) (par exemple, une famine dans une faction voisine, une guerre) peuvent augmenter drastiquement la demande et la valeur de certains biens (par exemple, la nourriture, les armes), créant des opportunités de profit ou des défis.

## 4. Interface du Marché

Une interface dédiée permettra au joueur de consulter les informations du marché, de prendre des décisions commerciales éclairées et de gérer ses transactions :

*   **Vue d'Ensemble :** Visualisation de l'inventaire global de la colonie, avec des totaux par catégorie de ressources, permettant une évaluation rapide des disponibilités.
*   **Filtrage et Tri :** Possibilité de filtrer les objets par type, catégorie, emplacement ou état (par exemple, périssable, endommagé), facilitant la recherche d'éléments spécifiques.
*   **Préférences des Marchands :** Indication des biens que les marchands recherchent activement ou qu'ils sont prêts à payer plus cher, ainsi que les biens qu'ils vendent à des prix avantageux.
*   **Journal des Transactions :** Un registre de toutes les transactions passées, utile pour l'analyse économique et la planification future.

## 5. Références

[1] [Artisanat et Fabrication](../05_systeme_ressources_et_production/03_artisanat_et_fabrication.md)
[2] [Commerce et Négociation](./02_commerce_et_negociation.md)
[3] [Factions et Relations](../01_systeme_monde/03_factions_et_relations.md)
*   [README du Système d'Économie et Commerce](./README.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

