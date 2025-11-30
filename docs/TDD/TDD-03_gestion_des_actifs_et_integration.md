---
statut: Brouillon
version: 1.0
auteur: Manus, Architecte de la Continuité et de la Performance (ACP)
date: 2025-11-30
tags: [TDD, assets, optimisation, mobile, performance, integration]
---

# TDD-03 : Gestion des Actifs et Intégration (Section III)

## I. Principes d'Optimisation des Actifs (Mobile-First)

Cette section spécifie les règles d'intégration des actifs (Art, Audio, Textures) pour garantir la **Performance Mobile** (Principe 1) et la conformité aux **Conventions Techniques** (Règles 23-26).

### I.1. Textures et Graphismes

| Règle Impérative | Spécification Technique | Justification Performance |
| :--- | :--- | :--- |
| **Atlas de Textures** | Utilisation obligatoire d'atlas de textures (Texture Arrays ou Atlases) pour les sprites et les tuiles. | Réduit le nombre de *Draw Calls* (appel critique sur mobile). |
| **Compression** | Utilisation de la compression de texture spécifique à Android (Ex: ETC2) pour toutes les textures non-UI. | Réduit la taille des assets sur disque et la consommation de VRAM. |
| **Résolution** | Les textures doivent être importées à la résolution maximale requise, avec des options de *downscaling* pour les appareils moins puissants. | Optimisation de la mémoire pour les appareils bas de gamme. |

### I.2. Audio et Musique

*   **Format :** Utilisation du format **OGG Vorbis** pour la musique et les sons longs, et **WAV** pour les sons courts et critiques (Ex: UI Clicks).
*   **Streaming :** La musique de fond et les sons longs doivent être chargés en *streaming* pour éviter de bloquer la mémoire au chargement.
*   **Pooling :** Utilisation d'un *Audio Stream Player Pool* pour réutiliser les nœuds audio et éviter l'instanciation coûteuse.

## II. Gestion de la Mémoire et Déchargement des Ressources

Le TDD-01 a établi que les Defs sont immuables. Cette section spécifie comment gérer les ressources qui ne sont pas des Defs.

### II.1. Politiques de Chargement/Déchargement

*   **Chargement à la Demande :** Les scènes, les textures et les sons qui ne sont pas nécessaires au démarrage doivent être chargés à la demande (`load()` ou `preload()`).
*   **Déchargement Actif :** Utilisation de `ResourceLoader.unload()` et de `queue_free()` sur les nœuds pour libérer activement la mémoire lorsque les ressources ne sont plus utilisées (Ex: après la transition d'un écran UI).

### II.2. Gestion des Références (WeakRef)

*   **Règle :** L'utilisation de `WeakRef` est obligatoire pour les références d'objets qui pourraient être libérés par le moteur (Ex: Entités).
*   **Justification :** Évite les fuites de mémoire et les erreurs d'accès à des objets libérés (*dangling pointers*).

## III. Intégration des Actifs dans le Pipeline

### III.1. Conventions d'Arborescence des Actifs

L'arborescence des actifs doit être organisée de manière stricte pour faciliter l'automatisation et le modding.

```
res://assets/
  - textures/
    - ui/
    - sprites/
    - tiles/
  - audio/
    - music/
    - sfx/
  - scenes/
    - ui/
    - entities/
```

### III.2. Outils d'Importation Automatisée

*   **Règle :** Tout actif importé doit passer par un processus d'importation automatisé (scripts Godot ou outils externes) pour appliquer les règles de compression et de nommage.
*   **Exemple :** Un script doit vérifier que toutes les textures dans `res://assets/sprites/` sont importées avec la compression ETC2.



## IV. Pipeline d'Intégration des Assets 2D

Cette section détaille le workflow technique pour l'intégration des assets 2D (sprites, animations) et audio, de la création à l'importation dans Godot.

### IV.1. Workflow d'Animation 2D (Spritesheets)

1.  **Préparation des Sprites :** Design des personnages/objets, découpage en frames et organisation en **Spritesheets** (PNG). L'utilisation de Spritesheets est impérative pour réduire les Draw Calls.
2.  **Création des Animations :** Animation frame par frame, en s'assurant que les animations cycliques sont parfaitement bouclées.
3.  **Intégration dans Godot :**
    *   **`AnimatedSprite2D` :** Pour les animations simples.
    *   **`AnimationPlayer` :** Pour les animations complexes et les transitions.
    *   **`AnimationTree` :** Pour la gestion des états d'animation complexes (ex: `StateMachine`).

### IV.2. Spécifications Techniques des Assets 2D

| Type d'Asset | Spécification Technique | Limite/Recommandation |
| :--- | :--- | :--- |
| **Spritesheets** | Résolution | Max 1024x1024 pour les assets principaux, 512x512 pour les assets secondaires. |
| **Spritesheets** | Format | PNG avec transparence. Utilisation de la compression VRAM (ETC2/ASTC) pour toutes les textures. |
| **Audio** | Format | OGG Vorbis pour la musique/ambiances, WAV pour les SFX courts. |
| **Audio** | Gestion | Chargement en *streaming* pour la musique et les sons longs. |

## V. Historique des Révisions

| Version | Date | Auteur | Description |
| :--- | :--- | :--- | :--- |
| 1.0 | 2025-11-30 | Manus (ACP) | Création du document spécifiant les règles d'optimisation mobile pour les textures et l'audio, et les politiques de gestion de la mémoire. |
