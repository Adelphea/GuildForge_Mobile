# Processus de Build Android pour GuildForge Mobile

**Auteur :** Manus AI
**Date :** 11 Octobre 2025
**Version :** 1.0
**Tags :** [documentation, technique, build, android, godot, deploiement]

Ce document décrit le processus détaillé de création des packages APK pour le projet GuildForge Mobile. Il couvre la préparation de la version, la configuration de l'exportation dans Godot, la signature de l'application et les méthodes de distribution pour un projet personnel sans publication externe prévue.

---

## 1. Introduction

Le projet GuildForge Mobile est développé sur un appareil mobile (Samsung Galaxy A54 5G) sans budget, en utilisant uniquement des outils et des ressources gratuits. Ce guide se concentre sur l'installation directe d'APK sur l'appareil mobile cible, sans passer par les stores d'applications traditionnels.

## 2. Préparation de la Version

Avant de créer une version de déploiement, les étapes suivantes sont essentielles pour garantir la qualité et la performance de l'application :

*   **Nettoyage du Projet :** Supprimer les fichiers inutiles, les assets de test et les scènes de débogage pour réduire la taille de l'application et améliorer les performances.
*   **Vérification des Paramètres du Projet :** S'assurer que les paramètres de version (numéro de version, nom du package, icônes) sont correctement configurés dans les paramètres du projet Godot.
*   **Optimisation Finale :** Effectuer une dernière passe d'optimisation des assets (compression des textures, réduction du nombre de polygones, etc.) et du code pour maximiser les performances sur mobile.
*   **Tests de Régression :** Réaliser une série complète de tests de régression pour s'assurer qu'aucune nouvelle erreur n'a été introduite suite aux dernières modifications. Pour plus de détails sur les stratégies de test, se référer à la section **[Stratégies de Tests](./strategies_tests.md)**.

## 3. Création de l'APK et Signature de l'Application

La création de l'APK (Android Package Kit) et sa signature sont des étapes cruciales pour l'installation sur un appareil Android.

### 3.1. Configuration de l'Exportation dans Godot

1.  Dans l'éditeur Godot, naviguer vers `Projet` > `Exporter...`.
2.  Créer un nouveau préréglage d'exportation pour la plateforme Android.
3.  Configurer les options d'exportation avec les informations suivantes :
    *   **Package Name :** `com.manus.guildforge` (ou un nom de package unique et approprié).
    *   **Version Code :** Incrémenter ce code de version (un entier) à chaque nouvelle version. Android l'utilise pour déterminer si une version est plus récente qu'une autre.
    *   **Version Name :** Mettre à jour le nom de la version (par exemple, `1.0.0`, `1.0.1`). C'est la chaîne de caractères visible par l'utilisateur.

### 3.2. Signature de l'Application (Keystore)

Chaque application Android doit être signée avec un certificat. Pour un projet personnel, il est fortement recommandé de créer son propre `keystore`.

*   **`debug.keystore` :** Ce fichier est généré automatiquement par Godot ou Android Studio et est utilisé pour les builds de débogage. Il n'est pas sécurisé pour la production.
*   **`custom_keystore` :** Pour un contrôle total et une simulation plus proche d'un processus de publication, il est conseillé de créer un `keystore` personnalisé via l'outil `keytool` du JDK (Java Development Kit) :

    ```bash
    keytool -genkeypair -v -keystore mon_jeu.keystore -alias mon_alias -keyalg RSA -keysize 2048 -validity 10000
    ```
    *   `mon_jeu.keystore` : Nom du fichier keystore.
    *   `mon_alias` : Un alias pour la clé.
    *   `validity 10000` : La durée de validité de la clé en jours (environ 27 ans).

    Une fois le `custom_keystore` créé, il doit être spécifié dans les options d'exportation Android de Godot Engine. Godot utilisera cette clé pour signer l'APK.

    **Conseil de sécurité :** Il est impératif de sauvegarder le fichier `mon_jeu.keystore` dans un endroit sûr et de ne jamais partager son mot de passe. La perte de ce fichier ou de son mot de passe rendrait impossible la mise à jour de l'application.

### 3.3. Exportation de l'APK

1.  Cliquer sur `Exporter le Projet` dans l'interface de Godot.
2.  Choisir un emplacement pour sauvegarder le fichier APK généré.
3.  Godot compilera le projet et générera l'APK signé.

## 4. Distribution de l'Application

Étant donné que le projet est personnel et sans publication externe prévue, la distribution se limitera à des installations directes.

### 4.1. Distribution Directe (APK)

*   L'APK généré peut être partagé directement avec les testeurs ou les utilisateurs via un lien de téléchargement ou un transfert de fichier.
*   **Installation :** Transférer l'APK sur l'appareil mobile (par exemple, Samsung Galaxy A54 5G) via USB ou un service cloud. Les utilisateurs devront autoriser l'installation d'applications provenant de sources inconnues dans les paramètres de leur appareil Android.
*   **Avantages :** Simple et rapide pour des tests internes ou une distribution limitée.
*   **Inconvénients :** Pas de gestion des mises à jour automatiques, moins sécurisé pour une distribution large.

### 4.2. Publication sur une Plateforme (Non Applicable)

Pour GuildForge Mobile, aucune publication externe n'est prévue sur des plateformes comme le Google Play Store. Par conséquent, les exigences spécifiques à ces plateformes (comme les App Bundles, les politiques de confidentialité, les classements d'âge, etc.) ne sont pas applicables dans le cadre de ce projet.

## 5. Mises à Jour et Maintenance

### 5.1. Processus de Mise à Jour

Pour les mises à jour, il suffit de générer une nouvelle version de l'APK avec les modifications. Android gérera la mise à jour de l'application existante si la nouvelle version est signée avec la même clé et a un code de version supérieur.

### 5.2. Gestion des Versions

Il est recommandé d'utiliser un système de **versionnement sémantique** (MAJOR.MINOR.PATCH) pour l'APK. Godot permet de définir le `Version Code` (un entier incrémental) et le `Version Name` (la chaîne de caractères visible par l'utilisateur) dans les paramètres d'exportation Android. Il est crucial d'incrémenter le `Version Code` à chaque nouvelle build pour assurer que les mises à jour soient correctement reconnues par Android.

### 5.3. Changelog

Maintenir un fichier `CHANGELOG.md` à la racine du projet pour documenter les changements de chaque version est une bonne pratique. Ce fichier doit lister les nouvelles fonctionnalités, les corrections de bugs et les améliorations apportées à chaque version.

## 6. Conclusion

Un processus de déploiement bien défini est crucial pour livrer des mises à jour stables et cohérentes. Ce document sert de guide pour toutes les futures versions de GuildForge Mobile, assurant une approche structurée et reproductible pour la création et la distribution des builds Android.

