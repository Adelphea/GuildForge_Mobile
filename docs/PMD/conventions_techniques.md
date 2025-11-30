---
statut: Brouillon (Évolutif)
version: 1.0
auteur: Manus AI
date: 2025-11-30
tags: [conventions, technique, code, gdscript, assets, architecture, données]
---

# Conventions Techniques (Code, Assets et Configuration)

## I. Conventions de Codage (GDScript)

Ces règles garantissent la qualité, la performance et la maintenabilité du code GDScript.

| # | Règle | Domaine | Implication Clé |
| :--- | :--- | :--- | :--- |
| 1 | **Typage Statique Strict** | Qualité | Utilisation obligatoire des annotations de type pour les fonctions, les arguments et les variables. |
| 2 | **Nommage des Classes** | Nommage | Utilisation du **`PascalCase`** pour les noms de classes (`class_name` ou nom de fichier). |
| 3 | **Nommage des Fonctions/Variables** | Nommage | Utilisation du **`snake_case`** pour les fonctions, les arguments et les variables locales. |
| 4 | **Nommage des Constantes** | Nommage | Utilisation du **`SCREAMING_SNAKE_CASE`** pour les constantes globales et les `enum`. |
| 5 | **Documentation du Code** | Qualité | Toutes les classes, fonctions et variables publiques doivent être documentées (Docstrings). |
| 6 | **Sécurité des Types** | Qualité | Utilisation de l'opérateur `is` pour vérifier les types lors du casting ou de l'accès aux nœuds. |
| 7 | **Utilisation des Signals** | Architecture | Privilégier les signaux pour la communication entre les nœuds et les systèmes. |
| 8 | **Éviter les `get_node()` Répétés** | Performance | Utiliser des références stockées ou des groupes Godot pour l'accès aux nœuds. |
| 9 | **Gestion Explicite de la Mémoire** | Performance | Attention aux références circulaires et à la libération des objets (`queue_free()`). |
| 10 | **Code Commenté sur le "Pourquoi"** | Qualité | Les commentaires doivent expliquer les décisions complexes, pas le code évident. |
| 11 | **Séparation des Préoccupations** | Architecture | Logique de jeu séparée des données (Resources) et de la présentation (Scenes). |
| 12 | **Tests Unitaires** | Qualité | Les composants critiques (DefManager, Pipeline de Conversion) doivent être couverts par des tests automatisés. |
| 13 | **Utilisation des Enums** | Qualité | Éviter les "magic strings" et les "magic numbers" en utilisant des `enum` ou des constantes. |

## II. Conventions d'Architecture de Données (Structure Hybride)

Ces règles découlent directement du Manifeste et guident l'implémentation du système de données.

| # | Règle | Domaine | Implication Clé |
| :--- | :--- | :--- | :--- |
| 14 | **Structure Hybride** | Modélisation | Mapping des XML vers des `Custom Resources` (CR) Godot. |
| 15 | **Composition over Inheritance** | Modélisation | Utilisation des `CompProperties` (CR imbriquées) pour les fonctionnalités des Defs. |
| 16 | **Classes de Base Abstraites** | Architecture | Utilisation de classes de base (`CR_Base.gd`, `DefType.gd`) pour définir les interfaces communes. |
| 17 | **Définition de Schéma Explicite** | Qualité | Le schéma de chaque DefType doit être documenté (TDD) et vérifié par le pipeline. |
| 18 | **Immuabilité des Données de Base** | Sécurité | Les données chargées des `.tres` ne doivent pas être modifiées en jeu (sauf les données de *sauvegarde*). |
| 19 | **Chargement Asynchrone** | Performance | Les ressources volumineuses doivent être chargées en arrière-plan pour éviter les saccades. |
| 20 | **Gestion Centralisée des Defs** | Architecture | Un `DefManager` unique est responsable du chargement et de l'accès à toutes les Defs. |
| 21 | **Validation des Données à l'Initialisation** | Qualité | Le `DefManager` doit valider l'intégrité des données au démarrage du jeu. |
| 22 | **Rétro-Compatibilité des Données** | Données | Les nouvelles versions du jeu doivent pouvoir charger les données de sauvegarde des versions précédentes. |

## III. Conventions d'Assets et de Scènes

Ces règles garantissent l'optimisation mobile et la cohérence visuelle.

| # | Règle | Domaine | Implication Clé |
| :--- | :--- | :--- | :--- |
| 23 | **Nommage des Assets** | Nommage | Utilisation du `snake_case` pour les fichiers d'assets (textures, sons, meshes). |
| 24 | **Nommage des Scènes** | Nommage | Utilisation du **`PascalCase`** pour les fichiers de scènes (`.tscn`). |
| 25 | **Compression des Textures** | Optimisation | Utilisation de formats compressés (ETC2) pour les textures Android. |
| 26 | **Optimisation du Draw Call** | Performance | Réduire le nombre de Draw Calls (batching, atlas de textures). |
| 27 | **Pools d'Objets** | Performance | Utilisation de pools pour les objets fréquemment instanciés (projectiles, effets visuels). |
| 28 | **Scènes comme Blueprints** | Architecture | Les scènes doivent être légères et servir de modèles pour l'instanciation. |
| 29 | **Hiérarchie des Nœuds** | Qualité | Les nœuds doivent être organisés de manière logique et les nœuds inutiles doivent être supprimés. |

## IV. Conventions de Configuration et de Workflow

Ces règles couvrent les aspects d'industrialisation et de gestion de projet.

| # | Règle | Domaine | Implication Clé |
| :--- | :--- | :--- | :--- |
| 30 | **Intégration Continue (CI)** | Workflow | Mise en place d'une CI pour l'exécution des tests et la conversion des données. |
| 31 | **Déploiement Continu (CD)** | Workflow | Automatisation du processus de build et de déploiement sur Android. |
| 32 | **Gestion des Threads** | Performance | Utilisation des threads pour les tâches lourdes (conversion de données, calculs complexes). |
| 33 | **Configuration Externe** | Configuration | Les paramètres de configuration spécifiques à l'environnement (clés API, chemins) doivent être gérés en dehors du code source. |
| 34 | **Utilisation des Groupes Godot** | Architecture | Utilisation des groupes pour l'accès et la gestion des collections de nœuds. |
| 35 | **Gestion de l'Énergie** | Mobile | Le jeu doit minimiser la consommation de batterie (limitation du framerate en arrière-plan). |
| 36 | **Utilisation des Profilers** | Performance | Le code doit être profilé régulièrement pour identifier les goulots d'étranglement. |

---
*Ce document est soumis à validation avant d'être intégré au dépôt.*


## V. Conventions de Production Audio et Workflow

Ces règles couvrent les outils, le workflow et les spécifications techniques pour la production et l'intégration des assets audio.

| # | Règle | Domaine | Implication Clé |
| :--- | :--- | :--- | :--- |
| 37 | **Outils de Production** | Workflow | Utilisation recommandée de DAW (Reaper/LMMS) et d'éditeurs audio (Audacity) pour la création et l'édition. |
| 38 | **Format Audio** | Optimisation | Utilisation du format **OGG Vorbis** pour la musique et les sons longs, et **WAV** pour les sons courts et critiques (UI Clicks). |
| 39 | **Compression Mobile** | Optimisation | Exporter les fichiers audio dans des formats compressés adaptés au jeu mobile (OGG Vorbis recommandé, ADPCM pour SFX courts). |
| 40 | **Workflow de Création** | Workflow | Le processus doit inclure la Conception Sonore, l'Enregistrement/Génération, l'Édition/Traitement et le Mixage. |
| 41 | **Intégration Godot** | Architecture | Configurer les propriétés d'importation (bouclage, compression) et assigner les sons aux **Bus Audio** appropriés (Musique, SFX, UI). |
| 42 | **Gestion de la Mémoire** | Performance | La musique de fond et les sons longs doivent être chargés en *streaming* pour éviter de bloquer la mémoire au chargement. |
