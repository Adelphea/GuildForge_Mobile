**Version :** 1.0
**Tags :** [tag1, tag2]

# Guide d'Intégration Godot - GuildForge

## Introduction

Ce guide fournit des instructions détaillées et des bonnes pratiques pour l'intégration des
différents éléments du projet GuildForge dans Godot Engine. Il couvre l'importation des
assets, l'intégration du code GDScript, la gestion des scènes, et les spécificités liées au
développement mobile-only. L'objectif est d'assurer une intégration fluide et optimisée, en tirant
parti des fonctionnalités de Godot tout en respectant les contraintes de performance des appareils
mobiles [1, 2].

## 1. Structure du Projet Godot

La structure des répertoires du projet Godot doit refléter l'architecture globale du projet pour
maintenir la clarté et la modularité. Le dossier `res://` (racine du projet Godot) sera organisé
comme suit [1, 2, 3]:

```
res://
├── Assets/                                 # Tous les assets visuels et sonores
│   ├── Graphics/                           # Sprites, textures, icônes
│   │   ├── Characters/
│   │   ├── Buildings/
│   │   ├── Items/
│   │   └── UI/
│   ├── Audio/                              # Effets sonores, musique
│   └── Fonts/
├── Data/                                   # Fichiers de données (Defs XML/JSON)
│   ├── Defs/
│   ├── Saves/
│   └── Configs/
├── Scenes/                                 # Toutes les scènes Godot
│   ├── Main/
│   ├── Colony/
│   ├── UI/
│   └── WorldMap/
├── Scripts/                                # Tous les scripts GDScript
│   ├── Core/
│   ├── Managers/
│   ├── UI/
│   ├── Entities/
│   ├── AI/
│   └── Utils/
├── docs/                                   # Documentation du projet (liens symboliques ou copie)
└── .gitattributes                          # Fichier de configuration Git (si utilisé)
```

**Note :** Le dossier `docs/` peut être un lien symbolique vers le dossier `docs/` principal du
projet ou une copie, selon la préférence de gestion de version et l'environnement de développement.

## 2. Importation et Gestion des Assets

Les assets (graphiques, audio) sont des éléments cruciaux pour l'immersion et les performances. Leur
importation et leur configuration doivent être faites avec soin [1, 2, 3].

### 2.1. Graphiques (Sprites, Textures, Icônes)

*   **Formats :** Privilégier les formats PNG pour les sprites avec transparence et JPG pour les
*   textures sans transparence afin d'optimiser la taille des fichiers. Les images dont la conception initiale a pu être assistée par IA mais qui sont finalisées manuellement devront être converties si nécessaire [1, 2].
*   **Résolution :** Maintenir une résolution cohérente et adaptée aux écrans mobiles. Éviter les
*   images surdimensionnées qui consomment inutilement de la mémoire. Utiliser des outils
*   d'optimisation d'images (compression, redimensionnement) avant l'importation [1, 2].
*   **Paramètres d'Importation Godot :**
    *   **Preset :** Utiliser le preset d'importation "2D Pixel" pour les sprites si le jeu est en pixel art, ou "2D Texture" pour les autres. Ajuster les paramètres de compression (par exemple, `Lossy` avec une qualité raisonnable) pour réduire la taille en mémoire GPU [1, 2].
    *   **Filtre :** Désactiver le filtre (Nearest) pour le pixel art afin de préserver la netteté des pixels. Utiliser le filtre (Linear) pour les graphiques stylisés [1, 2].
    *   **Atlas de Textures :** Regrouper les petits sprites dans des atlas de textures pour réduire
    *   le nombre de draw calls et améliorer les performances de rendu [1, 2].

### 2.2. Audio (Effets Sonores, Musique)

*   **Formats :** Utiliser des formats compressés comme OGG Vorbis pour la musique de fond et WAV
*   pour les effets sonores courts et critiques. L'IA peut générer des fichiers audio, qui devront
*   être convertis et optimisés [1, 2].
*   **Paramètres d'Importation Godot :**
    *   **Boucle :** Configurer les musiques pour qu'elles bouclent si nécessaire.
    *   **Compression :** Appliquer une compression adaptée pour réduire la taille des fichiers
    *   audio sans trop dégrader la qualité [1, 2].

## 3. Intégration du Code GDScript

Le code GDScript est le cœur de la logique de jeu. Son intégration doit être structurée et optimisée
[1, 2, 3].

### 3.1. Organisation des Scripts

*   **Dossier `guildforge/scripts/` :** Tous les scripts GDScript doivent être organisés dans le dossier
*   `res://guildforge/scripts/` selon la structure définie dans l'architecture logicielle (`core`, `game_logic`,
*   `utils`) [1, 2].
*   **Héritage et Composition :** Utiliser l'héritage pour les classes de base (par exemple, `Colon`
*   hérite de `Character`) et la composition (attacher des scripts à des nœuds) pour ajouter des
*   comportements spécifiques. Cela favorise la réutilisabilité et la modularité [1, 2].

### 3.2. Code Généré par IA

*   **Validation :** Le code généré par l'IA doit être systématiquement validé et révisé. Vérifier
*   la syntaxe, la logique, les performances et la conformité aux conventions de codage [1, 2].
*   **Intégration :** Intégrer les extraits de code générés dans les scripts existants ou créer de
*   nouveaux scripts si nécessaire. S'assurer que les fonctions et les variables sont correctement
*   nommées et documentées [1, 2].
*   **Refactoring :** Ne pas hésiter à refactoriser le code généré par l'IA pour l'adapter à la
*   structure et aux standards du projet. L'IA est un assistant, pas un remplaçant du développeur
*   [1, 2].

### 3.3. Bonnes Pratiques GDScript

*   **Typage Fort (Optionnel) :** Utiliser le typage fort de GDScript (`var x: int = 0`) pour
*   améliorer la lisibilité, la détection d'erreurs et potentiellement les performances [1, 2].
*   **Signaux et Slots :** Utiliser le système de signaux et slots de Godot pour la communication
*   entre les nœuds, plutôt que des références directes et rigides. Cela réduit le couplage et
*   facilite la maintenance [1, 2].
*   **Constantes et Enums :** Définir les constantes et les énumérations pour les valeurs magiques
*   ou les états du jeu afin d'améliorer la lisibilité et la maintenabilité du code [1, 2].
*   **Optimisation :** Éviter les boucles coûteuses dans les fonctions `_process()` ou
*   `_physics_process()`. Utiliser des algorithmes efficaces et des structures de données adaptées.
*   Profiler régulièrement le code pour identifier les goulots d'étranglement [1, 2].

## 4. Gestion des Scènes Godot

Les scènes Godot sont des unités de composition qui regroupent des nœuds et des scripts pour former
des éléments de jeu complexes [1, 2].

### 4.1. Scènes Réutilisables

*   **Principes :** Créer des scènes pour chaque entité de jeu réutilisable (par exemple,
*   `Colon.tscn`, `Building.tscn`, `Item.tscn`). Ces scènes encapsulent la logique et la
*   présentation de l'entité [1, 2].
*   **Instanciation :** Instancier ces scènes dans des scènes parentes (par exemple,
*   `ColonyScene.tscn` instancie plusieurs `Colon.tscn` et `Building.tscn`). Cela permet de modifier
*   une entité à un seul endroit et de propager les changements à toutes ses instances [1, 2].

### 4.2. Organisation des Scènes

*   **Dossier `Scenes/` :** Organiser les scènes dans le dossier `res://Scenes/` selon leur fonction
*   (`Main`, `Colony`, `UI`, `WorldMap`) [1, 2].
*   **Scène Principale :** La scène `Main.tscn` sera le point d'entrée du jeu, gérant le chargement
*   des autres scènes (menu principal, écran de jeu) [1, 2].

## 5. Intégration des Données (Defs XML/JSON)

Les données de jeu seront chargées dynamiquement depuis des fichiers externes [1, 2, 3].

*   **Chargement :** Utiliser le `DataManager` (voir
*   `./principes_design_logiciel.md`) pour charger et parser les fichiers
*   XML/JSON au démarrage du jeu ou de manière asynchrone si les fichiers sont nombreux [1, 2].
*   **Validation :** Mettre en place un système de validation pour s'assurer que les fichiers de
*   données sont correctement formatés et ne contiennent pas d'erreurs. Cela peut être fait via des
*   schémas XML ou des validations de structure JSON [1, 2].
*   **Accès :** Les autres systèmes du jeu accéderont aux données via le `DataManager`, qui fournira
*   des méthodes pour récupérer les `Defs` par ID ou par type [1, 2].

## 6. Optimisation pour Mobile

L'intégration dans Godot doit toujours prendre en compte les contraintes des appareils mobiles [1,
2, 3].

*   **Batching et Culling :** Utiliser les fonctionnalités de batching de Godot pour regrouper les
*   draw calls. Implémenter le culling (frustum culling, occlusion culling) pour ne rendre que les
*   éléments visibles à l'écran [1, 2].
*   **Pooling d'Objets :** Pour les entités fréquemment créées et détruites (par exemple,
*   projectiles, effets visuels), utiliser le pooling d'objets pour réduire
*   l'allocation/désallocation de mémoire et les pics de performance [1, 2].
*   **Gestion de la Mémoire :** Surveiller l'utilisation de la mémoire. Libérer les ressources
*   inutilisées. Éviter de charger tous les assets en même temps. Utiliser des textures compressées
*   [1, 2].
*   **Interface Utilisateur :** Concevoir l'UI avec des éléments simples et des animations légères.
*   Éviter les effets visuels coûteux sur l'UI [1, 2].

## Références

[1] `./structure_projet_godot.md` - Vue d'ensemble du Projet GuildForge
[2] `./principes_design_logiciel.md` - Vue d'ensemble de l'Architecture - GuildForge
[3] Godot Engine Officiel : [https://godotengine.org/](https://godotengine.org/)




## 7. Formats de Fichiers Supportés par Godot Engine 4.5 (Synthèse) {#7-formats-de-fichiers-supportés-par-godot-engine-45-synthèse}

Suite à une étude approfondie de la documentation de Godot Engine 4.5, les formats de fichiers suivants sont officiellement supportés et recommandés pour le développement mobile :

#### Images

*   **BMP** (`.bmp`) : Support limité (pas de 16 bits par pixel).
*   **DirectDraw Surface** (`.dds`) : Supporte les mipmaps.
*   **Khronos Texture** (`.ktx`) : Supporte uniquement les images 2D.
*   **OpenEXR** (`.exr`) et **Radiance HDR** (`.hdr`) : Supportent le HDR, recommandé pour les ciels panoramiques.
*   **JPEG** (`.jpg`, `.jpeg`) : Ne supporte pas la transparence.
*   **PNG** (`.png`) : Précision limitée à 8 bits par canal. Recommandé pour la transparence.
*   **Truevision Targa** (`.tga`)
*   **SVG** (`.svg`) : Rastérisé via ThorVG, support limité pour les vecteurs complexes. Le texte doit être converti en chemins.
*   **WebP** (`.webp`) : Supporte la transparence et la compression (avec ou sans perte). Précision limitée à 8 bits par canal.

**Recommandation pour les images :** Privilégier le **PNG** pour les sprites et les éléments d'UI nécessitant de la transparence, et le **JPG** pour les images sans transparence où la taille est une contrainte majeure. Le **WebP** est une excellente alternative pour les deux cas, offrant une bonne compression et le support de la transparence. Pour les SVG complexes, il est préférable de les convertir en PNG au préalable.

#### Audio

*   **WAV** : Non compressé ou légèrement compressé. Idéal pour les effets sonores courts et à faible latence.
*   **Ogg Vorbis** : Compressé avec perte. Recommandé pour la musique et les sons longs, offrant un bon équilibre qualité/taille.
*   **MP3** : Compressé avec perte. Également adapté pour la musique, mais Ogg Vorbis est souvent préféré dans Godot.

**Recommandation pour l'audio :** Utiliser le **WAV** pour les effets sonores courts et le **Ogg Vorbis** pour la musique et les sons plus longs.

#### Vidéo

*   **Ogg Theora** (`.ogv`) : Seul format vidéo supporté nativement. À noter que ce format est considéré comme obsolète et ne compresse pas efficacement la vidéo.

**Recommandation pour la vidéo :** Si la vidéo est indispensable, utiliser **Ogg Theora**. Pour des besoins plus avancés, il faudra envisager des plugins GDExtension ou des solutions alternatives (séquences d'images, etc.).

