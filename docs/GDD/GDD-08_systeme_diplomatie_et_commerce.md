---
title: "GDD-08 : Système Diplomatie et Commerce"
version: 1.0
date: 2025-11-30
auteur: Architecte de Game Design et Spécialiste de l'Émergence (AGDSE)
tags: [game-design, diplomatie, commerce, économie, factions, négociation, médiéval]
---

# GDD-08 : Système Diplomatie et Commerce

Ce document consolide les spécifications de *game design* pour le système de diplomatie et de commerce, couvrant les relations avec les factions, les mécanismes de marché et les transactions commerciales.

---

## Table des Matières

I. Introduction et Principes de Design
II. Marché et Valeurs
    II.1. Principes du Marché
    II.2. Facteurs Influant sur la Valeur
III. Commerce et Négociation
    III.1. Mécaniques de Commerce
    III.2. Rôle de la Négociation
IV. Diplomatie et Relations Factionnelles
    IV.1. Influence de la Réputation
    IV.2. Caravanes Commerciales

---

## I. Introduction et Principes de Design

Le système de diplomatie et de commerce est essentiel pour l'interaction de la colonie avec le monde extérieur. Il permet d'acquérir des ressources rares, de gérer les surplus et d'établir des relations avec les factions voisines.

**Principe de Design AGDSE :** Les interactions externes doivent être des **extensions de la narration émergente**. Les relations et les transactions sont influencées par les actions passées du joueur et les compétences de ses colons.

## II. Marché et Valeurs

Le marché est un écosystème dynamique qui détermine la valeur des biens.

### II.1. Principes du Marché

*   **Valeur Intrinsèque :** Chaque objet a une valeur de base déterminée par sa rareté, le coût de ses matériaux et le temps/compétence de fabrication.
*   **Offre et Demande :** La valeur des biens fluctue en fonction de l'offre (production de la colonie, stocks des marchands) et de la demande (besoins des marchands ou de la colonie).
*   **Monnaie :** Une monnaie (pièces d'or/argent) est utilisée pour faciliter les échanges, bien que le troc direct soit courant.

### II.2. Facteurs Influant sur la Valeur

| Facteur | Influence sur la Valeur |
| :--- | :--- |
| **Qualité** | Augmente la valeur (objet de maître > standard). |
| **Durabilité** | Les objets neufs ou en bon état valent plus cher. |
| **Rareté** | Les ressources difficiles à obtenir ou les objets uniques ont une valeur intrinsèquement plus élevée. |
| **Saisonnalité** | La valeur de certains biens (agricoles) varie selon les saisons. |
| **Événements** | Les événements mondiaux (famine, guerre) peuvent augmenter la demande et la valeur de biens spécifiques. |

## III. Commerce et Négociation

Le commerce s'effectue principalement avec des marchands itinérants ou via des caravanes.

### III.1. Mécaniques de Commerce

*   **Marchands Itinérants :** Visites périodiques offrant des opportunités d'achat et de vente. Leurs stocks et prix varient.
*   **Échange :** Vente des surplus et achat des biens nécessaires. Les transactions réussies améliorent la réputation.

### III.2. Rôle de la Négociation

La négociation permet d'influencer les prix d'achat et de vente.

*   **Compétence Commerce :** Un colon avec une compétence élevée en **Commerce** obtient de meilleurs prix et rabais.
*   **Traits de Caractère :** Certains traits (Charismatique, Avare) peuvent moduler les résultats de la négociation.

## IV. Diplomatie et Relations Factionnelles

Les relations avec les factions sont gérées par la diplomatie et ont un impact direct sur le commerce.

### IV.1. Influence de la Réputation

*   **Relations Positives :** Débloquent des routes commerciales exclusives, des prix préférentiels et l'accès à des biens rares.
*   **Relations Négatives :** Peuvent entraîner des embargos commerciaux, des attaques de caravanes et une méfiance générale.

### IV.2. Caravanes Commerciales

Le joueur peut former ses propres caravanes pour voyager et commercer avec d'autres colonies.

*   **Formation :** Sélection des colons, des animaux de bât et des marchandises. La capacité de transport est limitée.
*   **Risques :** Les voyages comportent des risques (attaques de bandits, événements climatiques) mais offrent des opportunités uniques.

---

## V. Références

[1] [GDD-01 : Système Monde](../GDD-01_systeme_monde.md)
[2] [GDD-03 : Système Personnages](../GDD-03_systeme_personnages.md)
[3] [GDD-06 : Système Ressources et Production](../GDD-06_systeme_ressources_et_production.md)
[4] [GDD-07 : Système Combat](../GDD-07_systeme_combat.md)
[5] [TDD-01 : Architecture de Données](../TDD/TDD-01_architecture_de_donnees.md)
[6] [PMD/conventions_generales.md](../PMD/conventions_generales.md)
