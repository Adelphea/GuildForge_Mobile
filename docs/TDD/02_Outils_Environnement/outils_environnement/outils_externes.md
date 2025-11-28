# Outils Externes et Gestion des Dépendances pour GuildForge Mobile

**Auteur :** Manus AI
**Date :** 11 Octobre 2025
**Version :** 1.0
**Tags :** [documentation, technique, outils, dependances, mobile, godot, ia]

Ce document décrit les stratégies et les bonnes pratiques pour la gestion des dépendances externes et l'utilisation des outils complémentaires dans le projet GuildForge Mobile. Il vise à minimiser la complexité, assurer la stabilité du projet et maintenir des performances optimales dans un environnement de développement mobile-only.

---

## 1. Introduction

Dans le contexte d'un développement mobile-only, la gestion des dépendances et l'intégration d'outils externes présentent des défis uniques. Ce guide établit des principes pour une sélection rigoureuse et une utilisation efficace de ces ressources, en se concentrant sur la compatibilité avec Godot Engine et les contraintes des appareils mobiles.

## 2. Principes de Gestion des Dépendances

Les principes suivants guident l'approche de gestion des dépendances pour GuildForge [1, 2, 3] :

*   **Minimisation :** N'inclure que les dépendances absolument nécessaires. Chaque dépendance ajoute du poids à l'application et peut introduire des risques de sécurité ou de compatibilité.
*   **Stabilité :** Privilégier les bibliothèques et outils bien établis, activement maintenus et ayant une bonne réputation dans la communauté.
*   **Compatibilité Mobile :** S'assurer que toutes les dépendances sont compatibles avec l'environnement Android et Godot Engine sur mobile.
*   **Performance :** Évaluer l'impact des dépendances sur la taille de l'application, la consommation de mémoire et les performances d'exécution.
*   **Documentation :** Documenter clairement toutes les dépendances utilisées, leur version et la raison de leur inclusion.

## 3. Types d'Outils et Dépendances

Pour GuildForge, les outils et dépendances peuvent être classés en plusieurs catégories :

### 3.1. Dépendances du Moteur de Jeu (Godot Engine)

Godot Engine est la principale dépendance. Des modules ou plugins peuvent être ajoutés :

*   **Modules Godot :** L'ajout de modules C++ personnalisés est complexe sur mobile. Il est préférable d'utiliser les fonctionnalités intégrées ou les plugins GDScript/C#.
*   **Plugins Godot (GDScript/C#) :** Les plugins de la Godot Asset Library doivent être soigneusement évalués pour leur compatibilité mobile et leur impact sur les performances.

### 3.2. Dépendances de Code (Bibliothèques GDScript/C#)

Ces dépendances sont des bibliothèques de code qui fournissent des fonctionnalités spécifiques :

*   **Bibliothèques GDScript :** Des scripts utilitaires ou des systèmes de gameplay complexes peuvent être importés. Ils sont généralement faciles à intégrer mais doivent respecter les conventions de codage du projet.
*   **Bibliothèques C# :** Si C# est utilisé, des bibliothèques .NET Standard ou .NET Core peuvent être incluses. La compatibilité avec le support C# de Godot et l'environnement Android est cruciale.

### 3.3. Outils Externes

Ces outils ne sont pas intégrés directement dans le jeu mais sont utilisés pendant le processus de développement :

*   **Outils d'IA Générative :** IA Manus, ImagineArt, Picsart, Leonardo.AI. Ces outils sont généralement basés sur le cloud et accessibles via un navigateur web, simplifiant leur gestion.
*   **Outils de Ligne de Commande :** Git (via Termux) pour le contrôle de version. D'autres utilitaires Linux peuvent être installés via `pkg` dans Termux si nécessaire.
*   **Éditeurs de Texte/IDE Mobiles :** Spck Editor, QuickEdit. Ces applications sont utilisées pour l'édition de code et de documentation.

## 4. Stratégies de Gestion

### 4.1. Gestion des Plugins Godot

*   **Évaluation :** Avant d'ajouter un plugin, évaluer sa nécessité, sa qualité de code, sa compatibilité avec Godot 4.x et Android, et son impact sur les performances.
*   **Installation Manuelle :** Pour les plugins GDScript, il est souvent préférable de les télécharger manuellement et de les placer dans un dossier dédié aux ressources externes du projet.
*   **Mises à Jour :** Mettre à jour les plugins avec prudence, en testant chaque nouvelle version.

### 4.2. Gestion des Bibliothèques de Code

*   **Copie Locale :** Pour les petites bibliothèques GDScript, copier les fichiers `.gd` directement dans un dossier dédié (`scripts/utils/`).
*   **Submodules Git (Avancé) :** Pour des bibliothèques plus importantes, les submodules Git peuvent être utilisés, mais cela ajoute de la complexité au workflow sur mobile.
*   **NuGet (pour C#) :** Si C# est utilisé, NuGet est le gestionnaire de paquets standard. Privilégier les bibliothèques avec peu de dépendances transitives.

### 4.3. Gestion des Outils Externes

*   **Applications Mobiles :** Installer les applications (Termux, éditeurs de texte, outils IA) directement depuis le Google Play Store ou F-Droid. Maintenir ces applications à jour.
*   **Services Cloud :** Pour les outils d'IA basés sur le cloud, s'assurer d'une connexion internet stable. Documenter les URL et les clés d'API si nécessaire.

## 5. Documentation des Dépendances

Il est crucial de maintenir une liste à jour de toutes les dépendances utilisées dans le projet :

*   **`project.godot` :** Le fichier `project.godot` de Godot liste les plugins et les modules utilisés. Le maintenir propre et à jour.
*   **`requirements.txt` (pour Python, si utilisé) :** Si des scripts Python sont utilisés (par exemple, via Termux), un fichier `requirements.txt` listera les dépendances Python.

## 6. Impact sur la Taille de l'Application

Chaque dépendance ajoute à la taille finale de l'APK. Il est important de surveiller cela :

*   **Analyse de l'APK :** Utiliser des outils d'analyse d'APK pour comprendre la composition de l'application et identifier les dépendances qui contribuent le plus à sa taille.
*   **Suppression des Dépendances Inutilisées :** Supprimer toutes les dépendances qui ne sont plus nécessaires ou qui ont été remplacées par des solutions internes.

## 7. Références

[1] `../general/project_overview.md` - Vue d'ensemble du Projet GuildForge
[2] `../technical_overview/architecture_overview.md` - Vue d'ensemble de l'Architecture - GuildForge
[3] `./strategies_optimisation_performance.md` - Stratégies d'Optimisation des Performances - GuildForge Mobile

