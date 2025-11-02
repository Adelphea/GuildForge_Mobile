# Conventions Générales - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.2
**Tags :** [conventions, développement, documentation, qualité, cohérence, principes]

Ce document établit les conventions générales qui régissent le développement et la documentation du projet GuildForge Mobile. Il vise à assurer une cohérence globale, à faciliter la collaboration et à améliorer la maintenabilité du projet, en particulier dans un contexte d'intégration de l'IA générative.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Principes Fondamentaux des Conventions](#2-principes-fondamentaux-des-conventions)
3.  [Types de Conventions](#3-types-de-conventions)
    *   [Conventions de Codage](#31-conventions-de-codage)
    *   [Conventions de Documentation](#32-conventions-de-documentation)
    *   [Conventions de Nommage des Fichiers et Dossiers](#33-conventions-de-nommage-des-fichiers-et-dossiers)
4.  [Principes Généraux de Développement](#4-principes-généraux-de-développement)
5.  [Références](#5-références)

---

## 1. Introduction

La mise en place de conventions claires et uniformes est fondamentale pour tout projet de développement logiciel, en particulier dans un contexte où l'IA générative est utilisée pour la production de contenu. Ces conventions servent de guide pour tous les aspects du projet, du codage à la documentation, en passant par la gestion des assets. Elles garantissent que le travail est cohérent, lisible et facile à maintenir, même avec l'évolution du projet.

## 2. Principes Fondamentaux des Conventions

L'adoption et le respect de ces conventions sont essentiels pour plusieurs raisons :

*   **Cohérence :** Assurer une approche uniforme à travers l'ensemble du projet, qu'il s'agisse du code, des assets ou de la documentation.
*   **Lisibilité :** Rendre le code et la documentation faciles à comprendre pour tous les contributeurs, y compris les futurs développeurs ou les outils d'IA.
*   **Maintenabilité :** Simplifier les mises à jour, la correction des erreurs et l'ajout de nouvelles fonctionnalités grâce à une structure prévisible et bien organisée.
*   **Collaboration :** Faciliter le travail d'équipe en réduisant les ambiguïtés et les malentendus, permettant une intégration plus fluide des contributions.

## 3. Types de Conventions

Les conventions sont réparties en plusieurs catégories pour couvrir tous les aspects du projet :

### 3.1. Conventions de Codage

Ces conventions régissent la manière dont le code est écrit, formaté et structuré. Elles incluent les règles de nommage des variables, fonctions, classes, l'indentation, l'utilisation des commentaires et le typage. Pour toutes les spécificités du GDScript, veuillez vous référer au document dédié : [Conventions de Codage GDScript](./coding_conventions.md).

### 3.2. Conventions de Documentation

Ces conventions guident la rédaction et le formatage de la documentation elle-même, assurant sa clarté, sa cohérence et sa maintenabilité. Elles couvrent la structure des documents, le style rédactionnel, l'utilisation des métadonnées et la gestion des références. Pour les spécificités, se référer à [Directives de Documentation pour GuildForge Mobile](./documentation_guidelines.md).

### 3.3. Conventions de Nommage des Fichiers et Dossiers

Ces conventions définissent les règles pour nommer les fichiers et les dossiers afin d'assurer une organisation logique et une navigation intuitive dans l'arborescence du projet. Elles sont cruciales pour la maintenabilité et la facilité de recherche.

## 4. Principes Généraux de Développement

Au-delà des conventions spécifiques, certains principes de développement fondamentaux sont à respecter :

*   **DRY (Don't Repeat Yourself) :** Éviter la duplication de code ou d'informations. Chaque élément d'information doit avoir une source unique et sans ambiguïté.
*   **KISS (Keep It Simple, Stupid) :** Privilégier la simplicité et la clarté dans la conception et l'implémentation.
*   **YAGNI (You Ain't Gonna Need It) :** Ne pas implémenter de fonctionnalités tant qu'elles ne sont pas réellement nécessaires.
*   **Gestion des Erreurs :** Mettre en place des mécanismes robustes de gestion des erreurs et de journalisation.
*   **Optimisation :** Toujours garder à l'esprit les contraintes de performance, en particulier pour le développement mobile.

Pour une exploration plus approfondie de ces principes, se référer à [Principes Généraux de Développement](./general_principles.md).

## 5. Références

*   [Conventions de Codage GDScript](./coding_conventions.md)
*   [Directives de Documentation pour GuildForge Mobile](./documentation_guidelines.md)
*   [Principes Généraux de Développement](./general_principles.md)
*   [Documentation Godot Engine sur la structure de projet](https://docs.godotengine.org/en/stable/tutorials/best_practices/project_organization.html)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

