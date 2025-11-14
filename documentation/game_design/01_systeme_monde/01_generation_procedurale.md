# Génération Procédurale du Monde - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 14 Novembre 2025
**Version :** 4.0 (Finale et Complète)
**Tags :** [game-design, monde, génération-procédurale, polyèdre-goldberg, seed, biomes, Godot, optimisation]

Ce document décrit les principes fondamentaux et les algorithmes du système de génération procédurale du monde de GuildForge Mobile. L'objectif est de créer des mondes uniques, cohérents et reproductibles, en s'appuyant sur une structure géodésique avancée et des paramètres personnalisables par le joueur.

---

## 1. Concept Central et Architecture Modulaire

Le système de génération est conçu pour offrir une rejouabilité infinie et des défis variés. Le processus est strictement déterministe et repose sur une `Seed` unique. Il est structuré autour de trois modules interconnectés, assurant une séparation claire des responsabilités :

1.  **Module de Paramétrage :** Définit les variables globales du monde (climat, couverture terrestre, factions).
2.  **Module de la Planète :** Génère la carte du monde (Polyèdre de Goldberg) et attribue les propriétés globales à chaque tuile (Terre/Océan, Biome, Climat).
3.  **Module des Cartes de Tuiles :** Génère les données des cartes isométriques locales pour chaque tuile terrestre.

### 1.1. Objectifs Clés

*   **Reproductibilité Totale :** Un monde généré à partir d'une `Seed` spécifique doit être toujours identique.
*   **Modélisation Sphérique :** Utiliser le **Polyèdre de Goldberg** pour garantir une grille de tuiles quasi-uniforme (majoritairement hexagonale) sur une surface sphérique.
*   **Continent Unique :** Assurer la prédominance d'une seule masse terrestre jouable, évitant les archipels fragmentés pour une expérience de jeu plus cohérente.
*   **Performance Mobile :** Utiliser le multithreading et la génération pré-calculée/chargement asynchrone pour minimiser les temps de chargement sur mobile.
*   **Cohérence Globale/Locale :** Assurer que les paramètres globaux de la planète (Biome, Climat) se traduisent fidèlement dans la génération détaillée des cartes de tuiles locales.

---

## 2. Module de Paramétrage de la Génération du Monde

Ce module est l'interface utilisateur où le joueur définit les variables initiales. Ces paramètres sont sérialisés dans une ressource Godot (`WorldGenerationSettings`) qui sert d'entrée au moteur de génération.

### 2.1. Options de Personnalisation

| Élément d'Interface | Type de Contrôle | Description et Impact sur la Génération |
| :--- | :--- | :--- |
| **Seed du Monde** | Champ de texte + Bouton "Aléatoire" | Chaîne de caractères (ou entier) utilisée comme graine pour tous les algorithmes de bruit. **Garantit l'unicité et la reproductibilité du monde.** |
| **Couverture Terrestre** | Curseur (0% à 100%) | Ratio entre les tuiles terrestres et les tuiles océaniques sur la planète. 0% = 100% Océan, 100% = 100% Terre. |
| **Fréquence des Précipitations** | Curseur (Bas - Moyen - Élevé) | Paramètre global influençant la distribution de l'humidité sur la planète, impactant directement les biomes (axe Y du Diagramme de Whittaker). |
| **Température Moyenne** | Curseur (Froid - Tempéré - Chaud) | Paramètre global influençant la distribution de la température, impactant les biomes (axe X du Diagramme de Whittaker). |
| **Densité des Factions** | Curseur (Faible - Normal - Élevé) | Détermine la quantité de camps de factions PNJ qui seront implantés sur les tuiles terrestres. |
| **Gestion des Factions** | Tableau (Ajouter/Supprimer) | Permet de sélectionner les `FactionDef` qui seront incluses dans le monde. |
| **Réglages Avancés** | Bouton | Accès aux options de génération fines (ex: niveau de subdivision du Polyèdre de Goldberg, exclusion de biomes spécifiques). |

### 2.2. Structure de Données des Paramètres

Les paramètres sont stockés dans une `Custom Resource` Godot pour une gestion simplifiée et une sérialisation aisée [2] :

```gdscript
# WorldGenerationSettings (Custom Resource)
class_name WorldGenerationSettings extends Resource:
    @export var seed: String = ""
    @export var land_coverage_ratio: float = 0.5 # [0.0, 1.0]
    @export var precipitation_frequency: int = 1 # 0=Bas, 1=Moyen, 2=Élevé
    @export var temperature_level: int = 1 # 0=Froid, 1=Tempéré, 2=Chaud
    @export var faction_camp_density: int = 1 # 0=Faible, 1=Normal, 2=Élevé
    @export var active_factions: Array[FactionDef] = []
```

---

## 3. Module de la Planète Générée : Le Polyèdre de Goldberg

La planète est modélisée comme un **Polyèdre de Goldberg** ($GP(m, n)$) [3], une grille géodésique sphérique composée de tuiles. Cette structure garantit une approximation sphérique avec une connectivité de tuiles majoritairement hexagonale.

### 3.1. Structure et Rôle des Tuiles

Le Polyèdre de Goldberg est dérivé d'un icosaèdre subdivisé. Toutes les tuiles, qu'elles soient hexagonales ou pentagonales, sont traitées comme des unités de carte du monde à part entière, assurant une couverture complète du globe.

*   **Tuiles Hexagonales :** Elles constituent la majorité des tuiles et assurent une connectivité uniforme (6 voisins).
*   **12 Tuiles Pentagonales :** Ces tuiles sont inévitables. Elles sont gérées comme des tuiles standard mais peuvent être utilisées pour ancrer des caractéristiques spécifiques (ex: probabilité accrue d'être des zones polaires ou des points de référence).

### 3.2. Processus de Génération de la Planète

La génération du monde global est une séquence d'étapes déterministes qui utilise la `Seed` pour attribuer des propriétés à chaque tuile :

1.  **Génération de la Grille Géodésique :** Construction de la topologie du Polyèdre de Goldberg (liste des tuiles, coordonnées 3D, et relations de voisinage).
2.  **Distribution Terre/Océan :** Application d'un **bruit de Perlin 3D** sur les coordonnées 3D de la grille. Ce bruit est utilisé **uniquement** pour déterminer la nature de la tuile (Terre ou Océan) et non pour générer un relief 3D. Le seuil de bruit est ajusté par le paramètre de **Couverture Terrestre** pour simuler une "altitude virtuelle" influençant la taille des continents. Un post-traitement est appliqué pour s'assurer qu'une seule masse terrestre dominante (le continent unique) soit conservée, les autres étant converties en tuiles océaniques ou en petits îlots non jouables.
3.  **Génération des Paramètres Climatiques :**
    *   **Température :** Calculée en fonction de la latitude (distance de l'équateur) et ajustée par le paramètre global de **Température Moyenne**.
    *   **Humidité :** Calculée en fonction de la proximité des tuiles océaniques et ajustée par le paramètre global de **Fréquence des Précipitations**.
4.  **Attribution des Biomes :** Chaque tuile terrestre se voit attribuer un `BiomeDef` (défini dans `02_biomes_et_environnement.md` [1]) en fonction de sa combinaison locale de Température et d'Humidité, selon une **simplification du modèle du Diagramme de Whittaker**.
5.  **Placement des Factions :** Les camps de factions sont placés sur les tuiles terrestres en respectant la **Densité des Factions** et en utilisant la `Seed` pour garantir un placement déterministe.

### 3.3. Structure de Données de la Tuile (TileData)

Chaque tuile du Polyèdre de Goldberg est représentée par une structure de données qui stocke ses propriétés globales. Cette structure est essentielle pour lier la carte du monde aux cartes de tuiles locales.

| Propriété | Type | Description |
| :--- | :--- | :--- |
| `id` | `int` | Identifiant unique de la tuile. |
| `type` | `enum` | `Oceanic` ou `Terrestrial`. |
| `is_pentagon` | `bool` | Vrai si c'est l'un des 12 pentagones. |
| `biome_def` | `BiomeDef` (Resource) | Référence au BiomeDef attribué (pour les tuiles terrestres). |
| `temperature` | `float` | Température locale de la tuile (influence la carte locale). |
| `humidity` | `float` | Humidité locale de la tuile (influence la carte locale). |
| `faction_camps` | `Array[FactionCampData]` | Liste des camps de factions présents sur cette tuile. |
| `map_data_path` | `String` | Chemin vers le fichier de données de la carte isométrique détaillée (lien vers le Module 4). |

---

## 4. Module de Génération des Cartes de Tuiles Terrestres

Chaque tuile terrestre représente une zone de jeu locale (la carte isométrique). Ces cartes sont générées de manière détaillée et stockées pour être chargées lors de l'accès à la tuile.

### 4.1. Étapes Séquentielles de Génération Locale

La génération de la carte isométrique est un processus séquentiel et déterministe, influencé par les paramètres de la `TileData` (Biome, Température, Humidité). Ces étapes sont l'équivalent des `WorldGenStepDef` pour la carte locale :

1.  **Génération du Terrain de Base :** Utilisation d'un bruit 2D pour définir les types de terrain de base (plaine, sol fertile, roche) en fonction du `BiomeDef`.
2.  **Placement du Relief :** Génération des données de relief (petites collines, montagnes) en utilisant un bruit 2D à basse fréquence.
3.  **Tracé des Points d'Eau :** Génération des données des lacs et des rivières. Les rivières doivent suivre une logique de flux cohérente (des zones de relief vers les zones basses ou l'océan).
4.  **Génération des Ressources :** Distribution des ressources (minerais, bois, eau, gibier) en fonction du Biome et des variations locales.
5.  **Placement des Points d'Intérêt (POI) :** Placement des Ruines, Donjons, et des Voies de Communication (Routes) en fonction de la densité de factions et de la topographie.

### 4.2. Génération Pré-calculée et Stockage

La génération de la carte isométrique détaillée est lancée pour **toutes** les tuiles terrestres immédiatement après la génération de la planète globale.

*   **Déclenchement :** Le processus est lancé pour chaque tuile où `type` est `Terrestrial`.
*   **Algorithme Local :** Un algorithme de génération de carte 2D est exécuté, prenant en entrée la `Seed` globale et les paramètres locaux de la tuile (`biome_def`, `temperature`, `humidity`).
*   **Stockage :** Les données brutes de la carte (tableau 2D des types de terrain, positions des ressources, etc.) sont sérialisées et stockées dans un fichier binaire optimisé (référencé par `map_data_path` dans la `TileData`).

### 4.3. Génération Détaillée des Ressources

La distribution des ressources est un facteur clé de la rejouabilité et de la stratégie de survie.

*   **Distribution :** Les ressources sont distribuées en fonction des biomes et des caractéristiques du terrain généré localement.
*   **Rareté et Nœuds :** Certaines ressources sont plus rares et se trouvent dans des zones spécifiques (ex: minerais en montagne). Des **Nœuds de Ressources** sont créés pour indiquer des points d'intérêt où les ressources sont plus abondantes ou de meilleure qualité.

### 4.4. Génération des Points d'Intérêt et des Voies de Communication

Ce processus gère le placement des éléments non naturels sur la carte locale.

*   **Villes/Camps de Factions :** Le placement des camps de factions PNJ est finalisé sur la carte locale, avec la génération des structures de base.
*   **Ruines/Donjons :** Placement de lieux d'intérêt pour l'exploration, potentiellement avec des défis et des récompenses.
*   **Routes/Rivières :** Les rivières sont tracées en fonction de la topographie locale. Les routes sont générées pour relier les camps de factions et les points d'intérêt majeurs.

### 4.5. Influence des Paramètres Locaux et Rendu 2D/Sprite

La cohérence entre la carte du monde et la carte locale est assurée par l'influence des paramètres de la tuile. Le rendu de la carte locale est basé sur une approche 2D/Sprite pour optimiser les performances sur mobile :

*   **`BiomeDef` :** Le Biome est le facteur principal, déterminant la texture de base de la tuile.
*   **Relief et Points d'Eau :** Les éléments de relief (petites collines, montagnes) et les points d'eau (lacs) sont générés comme des données dans la carte locale, puis rendus en jeu par des **sprites superposés** sur la texture de base du biome. **Il n'y a pas de géométrie 3D de terrain supplémentaire.**
*   **Voies de Communication :** Les tracés de rivières et de routes sont également rendus par des **sprites superposés** sur la texture de base du biome.
*   **`Temperature` et `Humidity` :** Ces valeurs affinent les variations locales (ex: un biome de plaine tempérée avec une humidité élevée pourrait générer des zones de marais locales sur la carte isométrique, rendues par des sprites).
*   **`Faction Camps` :** Le placement des camps de factions est intégré dans la génération de la carte isométrique pour garantir que les structures et les PNJ soient correctement positionnés.

---

## 5. Sélection de la Tuile de Départ

Une fois le monde généré et les cartes de tuiles pré-calculées, le joueur est présenté à la carte du monde (le Polyèdre de Goldberg) pour choisir la tuile où établir sa colonie.

*   **Affichage de la Planète :** La planète est affichée avec les textures de biome correspondantes pour chaque tuile.
*   **Caractéristiques des Tuiles :** Chaque tuile sélectionnable affiche des informations pertinentes sur ses caractéristiques (Biome, Température, Humidité, Ressources Locales, Voisins Potentiels) pour aider le joueur dans son choix.

---

## 6. Algorithmes et Optimisation

### 6.1. Déterminisme et Bruit

L'ensemble du système repose sur des fonctions de bruit (Perlin, Simplex) initialisées par la `Seed` pour garantir le déterminisme.

*   **Bruit 3D (Planète) :** Utilisé **uniquement** pour la distribution Terre/Océan sur la surface sphérique.
*   **Bruit 2D (Tuile Locale) :** Utilisé pour la génération des caractéristiques locales (relief, points d'eau, ressources) sur la carte isométrique 2D.

### 6.2. Optimisation pour Mobile

La génération de toutes les cartes isométriques peut être coûteuse. Pour maintenir la fluidité sur mobile :

*   **Multithreading :** Le processus de génération des cartes de tuiles doit être exécuté sur des threads séparés pour ne pas bloquer le thread principal de l'interface utilisateur.
*   **Chargement Asynchrone :** Seule la carte isométrique de la tuile actuellement jouée est chargée en mémoire. Les autres cartes sont chargées de manière asynchrone uniquement lorsque le joueur se déplace vers une nouvelle tuile.

---

## 7. Références

[1] [02_biomes_et_environnement.md](./02_biomes_et_environnement.md)
[2] [Gestion des Données Godot](../../verite_unique/gestion_donnees_godot.md#custom-resources)
[3] [Goldberg polyhedron - Wikipedia](https://en.wikipedia.org/wiki/Goldberg_polyhedron)
[4] [Goldberg-Coxeter Construction - Red Blob Games](https://www.redblobgames.com/x/1902-goldberg-coxeter/)
[5] [Système de Ressources et Production](../05_systeme_ressources_et_production/README.md)
[6] [Système de Factions et Relations](./03_factions_et_relations.md)
