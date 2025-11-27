# Configuration de l'Environnement de Développement Mobile - GuildForge

**Auteur :** Manus AI
**Date :** 11 Octobre 2025
**Version :** 1.0
**Tags :** [documentation, technique, environnement, mobile, godot, termux, git, ia]

Ce document fournit un guide détaillé pour la configuration de l'environnement de développement mobile pour le projet GuildForge. Il est spécifiquement conçu pour un développement entièrement réalisé sur un appareil mobile, le Samsung Galaxy A54 5G, et couvre l'installation des outils nécessaires, la configuration de Godot Engine, et l'intégration des outils d'IA pour la génération de code et d'assets.

---

## 1. Introduction

Le projet GuildForge se distingue par son approche de développement mobile-first, utilisant un Samsung Galaxy A54 5G comme plateforme principale. Ce guide vise à rationaliser le processus de mise en place de l'environnement de travail, en détaillant les prérequis matériels et logiciels, ainsi que les étapes d'installation et de configuration des outils essentiels.

## 2. Prérequis Matériels et Logiciels

### 2.1. Matériel

*   **Samsung Galaxy A54 5G :** L'appareil cible et de développement principal. Il est recommandé de disposer d'un espace de stockage suffisant (au moins 128 Go) et d'une batterie bien chargée.
*   **Clavier et Souris Bluetooth (Optionnel mais Recommandé) :** Pour améliorer l'ergonomie et la productivité, un clavier et une souris externes peuvent être connectés via Bluetooth.
*   **Écran Externe (Optionnel) :** Un écran externe compatible avec le mode DeX de Samsung peut offrir un espace de travail plus grand et faciliter le développement.

### 2.2. Logiciels et Applications

*   **Godot Engine (Version Android) :** Le moteur de jeu principal. La version Android de l'éditeur Godot doit être téléchargée depuis le Google Play Store ou le site officiel de Godot.
*   **Termux :** Un émulateur de terminal Linux pour Android, essentiel pour l'installation de Git et d'autres utilitaires de ligne de commande.
*   **Git :** Système de contrôle de version, installé via Termux.
*   **IA Manus (ou équivalent) :** Outil d'IA générative pour la production de code GDScript, l'analyse de documentation et la création de rapports. Accessible via un navigateur web mobile.
*   **Applications de Génération d'Assets IA :** Des applications telles qu'ImagineArt, Picsart, ou Leonardo.AI sont utilisées pour la génération de sprites et de textures. Il est crucial de s'assurer que les assets générés sont optimisés pour les performances mobiles.
*   **Éditeur de Texte Mobile :** Un éditeur de texte avec support Markdown et coloration syntaxique (par exemple, QuickEdit, Spck Editor) est nécessaire pour l'édition de code léger et la documentation.
*   **Gestionnaire de Fichiers :** Un gestionnaire de fichiers robuste (par exemple, Solid Explorer, FX File Explorer) est indispensable pour organiser les fichiers du projet.

## 3. Installation et Configuration de Godot Engine

### 3.1. Téléchargement et Installation

1.  **Télécharger Godot :** Accéder au Google Play Store et rechercher "Godot Engine" ou télécharger l'APK directement depuis le site officiel (godotengine.org).
2.  **Installer l'Application :** Suivre les instructions d'installation standard pour Android.

### 3.2. Configuration Initiale

1.  **Création d'un Nouveau Projet :** Lancer Godot Engine. Créer un nouveau projet nommé `guildforge`. L'emplacement de stockage recommandé est `/home/ubuntu/guildforgemobile/guildforgemobile/` sur l'appareil, de sorte que le fichier `project.godot` se trouve dans `/home/ubuntu/guildforgemobile/guildforgemobile/guildforge/`.
2.  **Paramètres du Projet :** Dans l'éditeur Godot, accéder aux paramètres du projet. Configurer la résolution de base pour correspondre à l'écran du Samsung Galaxy A54 5G (ou une résolution standard mobile comme 1080x1920) et ajuster les paramètres d'affichage pour l'optimisation mobile.
3.  **Langage de Script :** Le langage de script par défaut sera GDScript. Si l'utilisation de C# est envisagée, s'assurer que le support C# est activé dans les paramètres d'exportation (nécessite le téléchargement du module Mono/C#).

## 4. Configuration de l'Environnement de Ligne de Commande (Termux)

Termux permet d'accéder à un environnement Linux sur Android, essentiel pour Git et d'autres utilitaires.

### 4.1. Installation de Termux

1.  **Télécharger Termux :** Installer Termux depuis le Google Play Store ou F-Droid.
2.  **Mise à Jour des Paquets :** Après l'installation, ouvrir Termux et exécuter les commandes suivantes pour mettre à jour les paquets :
    ```bash
    pkg update && pkg upgrade
    ```

### 4.2. Installation et Configuration de Git

1.  **Installer Git :** Dans Termux, exécuter :
    ```bash
    pkg install git
    ```
2.  **Configuration de Git :** Configurer le nom d'utilisateur et l'adresse e-mail pour Git :
    ```bash
    git config --global user.name "Votre Nom"
    git config --global user.email "votre.email@example.com"
    ```
3.  **Cloner le Dépôt du Projet :** Naviguer vers le répertoire de stockage du projet (par exemple, `cd storage/shared/Documents/GodotProjects/`) et cloner le dépôt Git distant :
    ```bash
    git clone [URL_DE_VOTRE_DEPOT_GIT]
    ```

## 5. Outils d'IA et Génération d'Assets

### 5.1. IA Manus (ou équivalent)

IA Manus est un outil d'IA générative qui peut être utilisé pour la production de code GDScript, l'analyse de documentation, la création de rapports et l'aide à la conception. Il est accessible via un navigateur web mobile.

### 5.2. Applications de Génération d'Assets IA

Des applications comme ImagineArt, Picsart, Leonardo.AI, ou d'autres outils de création d'images peuvent être utilisées pour générer des sprites et des textures. Il est important de s'assurer que les assets générés sont optimisés pour les performances mobiles.

## 6. Gestion de Fichiers et Organisation du Projet

Pour la structure détaillée des dossiers du projet, veuillez vous référer à [Structure des Fichiers et Conventions de Nommage](../../technique/architecture_code/structure_projet_godot.md). Ce document est le point de référence unique pour l'organisation des fichiers.

## 7. Tests et Débogage

*   **Tests sur l'Appareil :** Exécuter régulièrement le jeu directement depuis l'éditeur Godot sur le Samsung Galaxy A54 5G pour tester les fonctionnalités et les performances.
*   **Débogage :** Utiliser les outils de débogage intégrés à Godot Engine. Pour les problèmes plus complexes, les logs peuvent être consultés via Termux ou une application de logcat.

## 8. Références

*   [Vue d'ensemble du Projet GuildForge](../../game_design/README.md)
*   [Site Officiel de Godot Engine](https://godotengine.org/)

