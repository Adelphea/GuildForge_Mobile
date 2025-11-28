---
Statut: Brouillon
---

# Gestion de l'État du Jeu - GuildForge Mobile

**Auteur :** IA Manus
**Date :** 05 octobre 2025
**Version :** 1.0
**Tags :** [état du jeu, sauvegarde, chargement, persistance, Godot]

## Introduction

Ce document décrit comment l'état du jeu est géré, sauvegardé, chargé et synchronisé dans GuildForge Mobile. Une gestion robuste de l'état du jeu est cruciale pour un jeu mobile, garantissant la persistance des données, la résilience aux interruptions et une expérience utilisateur fluide.

## 1. Définition de l'État du Jeu

L'état du jeu englobe toutes les données dynamiques qui définissent la progression et la situation actuelle de la partie. Cela inclut, sans s'y limiter :

*   **État de la Colonie :** Ressources, bâtiments construits, zones définies, recherches en cours.
*   **État des Colons :** Santé, moral, compétences, traits, relations, tâches actuelles, inventaire.
*   **État du Monde :** Événements en cours, factions, relations entre factions, état des tuiles.
*   **Paramètres du Jeu :** Options utilisateur, difficulté.

## 2. Structure des Données de l'État du Jeu

L'état du jeu sera représenté par une structure de données centralisée, potentiellement un ensemble de dictionnaires et d'objets GDScript/C# sérialisables. Inspiré des `Defs` XML/JSON, l'état du jeu sera une instance de ces définitions, avec des valeurs dynamiques.

*   **Objets de Données :** Des classes GDScript ou C# dédiées (par exemple, `ColonState`, `BuildingState`, `WorldState`) encapsuleront les données spécifiques à chaque entité ou système.
*   **Centralisation :** Un objet `GameState` de haut niveau agrègera toutes ces données, facilitant la sérialisation et la désérialisation.

## 3. Mécanismes de Persistance (Sauvegarde et Chargement)

La persistance de l'état du jeu est gérée par un `SaveLoadSystem` (faisant partie du `DataManager` ou un module dédié).

### 3.1. Sauvegarde

*   **Fréquence :** Les sauvegardes seront effectuées automatiquement à intervalles réguliers (par exemple, toutes les 5 minutes de jeu actif), lors d'événements clés (fin de raid, accomplissement de quête), et manuellement à la demande du joueur.
*   **Format :** L'état du jeu sera sérialisé en un format optimisé pour la taille et la vitesse sur mobile. JSON est un candidat privilégié pour sa lisibilité et sa facilité de parsing. Le format binaire peut être envisagé pour des raisons de performance et de sécurité.
*   **Compression :** Les fichiers de sauvegarde pourront être compressés pour réduire l'espace de stockage.
*   **Localisation :** Les sauvegardes seront stockées dans le répertoire de données de l'application sur l'appareil mobile.

### 3.2. Chargement

*   **Au Démarrage :** Le jeu tentera de charger la dernière sauvegarde disponible au démarrage. Si aucune sauvegarde n'est trouvée, une nouvelle partie sera initiée.
*   **Sélection Manuelle :** Le joueur pourra choisir parmi plusieurs slots de sauvegarde (si implémenté) ou charger une sauvegarde spécifique.
*   **Gestion des Erreurs :** Le système de chargement devra être robuste face aux fichiers de sauvegarde corrompus ou incompatibles (par exemple, après une mise à jour du jeu).

## 4. Synchronisation et Gestion des Conflits

Pour un jeu mobile, la synchronisation de l'état du jeu est essentielle, surtout en cas d'interruptions (appels, notifications, mise en veille de l'application).

*   **Sauvegarde en Arrière-plan :** Le jeu tentera de sauvegarder l'état actuel avant de passer en arrière-plan ou d'être interrompu.
*   **Reprise :** Lors de la reprise de l'application, le jeu vérifiera la cohérence de l'état et chargera la dernière sauvegarde valide si nécessaire.
*   **Cloud Saves (Optionnel) :** L'intégration de services de sauvegarde cloud (par exemple, Google Play Games, Apple Game Center) pourrait être envisagée pour permettre aux joueurs de synchroniser leur progression entre appareils ou de récupérer des sauvegardes en cas de perte de données locales.

## 5. Gestion des Erreurs et Récupération

*   **Journalisation :** Toutes les opérations de sauvegarde/chargement et les erreurs associées seront journalisées pour faciliter le débogage.
*   **Sauvegardes de Secours :** Maintenir un petit historique de sauvegardes (par exemple, les 3 dernières) pour permettre au joueur de revenir à un état antérieur en cas de problème.
*   **Validation de l'Intégrité :** Des sommes de contrôle (checksums) ou d'autres mécanismes de validation pourront être utilisés pour vérifier l'intégrité des fichiers de sauvegarde.

## Références

[1] [Principes de Design Logiciel](./principes_design_logiciel.md) - Vue d'ensemble de l'Architecture - GuildForge
[2] [Structure du Projet Godot](./structure_projet_godot.md) - Guide d'Intégration Godot - GuildForge

