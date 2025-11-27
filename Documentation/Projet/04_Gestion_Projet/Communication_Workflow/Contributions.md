# Guide de Contribution à la Documentation - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.3
**Tags :** [guide, contribution, documentation, conventions, workflow, qualité]

Ce document fournit les directives et les conventions à suivre pour toute personne (ou IA) contribuant à la documentation du projet GuildForge Mobile. Le respect de ces règles est essentiel pour maintenir la cohérence, la clarté et la qualité de notre documentation, assurant ainsi une base de connaissances fiable et facile à maintenir.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Principes Généraux de Contribution](#2-principes-généraux-de-contribution)
3.  [Directives Spécifiques pour l'IA Manus](#3-directives-spécifiques-pour-lia-manus)
4.  [Structure des Dossiers](#4-structure-des-dossiers)
5.  [Processus de Création de Fichier avec Template](#5-processus-de-création-de-fichier-avec-template)
6.  [Références](#6-références)

---

## 1. Introduction

La documentation est une composante vitale du projet GuildForge Mobile, servant de référence pour tous les aspects du développement. Ce guide a pour objectif de faciliter et d'harmoniser les contributions, en s'assurant que chaque ajout ou modification s'intègre parfaitement dans la structure existante et respecte les standards de qualité établis. Une documentation bien tenue est un gage de succès pour la collaboration et la maintenabilité à long terme du projet.

## 2. Principes Généraux de Contribution

La contribution à la documentation repose sur plusieurs principes fondamentaux qui garantissent sa valeur et son efficacité :

*   **Clarté, Concision et Précision :** Le contenu doit être facile à comprendre, direct et factuellement correct. Évitez le jargon inutile et privilégiez un langage simple et accessible.
*   **Cohérence :** Chaque contribution doit s'aligner avec le style, le ton et le formatage existants de la documentation. L'uniformité est essentielle pour une lecture fluide.
*   **Pertinence :** Chaque document doit avoir un objectif clair et apporter une valeur ajoutée au projet. Évitez les informations redondantes ou obsolètes.
*   **Validation Humaine :** Toute contribution générée par une IA doit être systématiquement validée, révisée et, si nécessaire, refactorisée par un développeur humain avant son intégration définitive. Cela garantit la qualité et l'exactitude du contenu.

## 3. Directives Spécifiques pour l'IA Manus

En tant qu'IA Manus, des instructions supplémentaires doivent être suivies pour garantir une contribution optimale et conforme aux standards du projet :

*   **Utilisation des Modèles de Fichiers :** Il est impératif d'utiliser les modèles de fichiers disponibles dans le dossier `templates/` lors de la création de nouveaux documents. Adaptez leur contenu aux informations spécifiques à documenter.
*   **Conventions de Nommage des Fichiers :** Utilisez le `snake_case` (minuscules, mots séparés par des underscores) pour les noms de fichiers. Les noms doivent être descriptifs et concis (ex: `guide_integration_ia.md`). Évitez les caractères spéciaux, les espaces et les majuscules.
*   **Formatage Markdown Standard :** Respectez scrupuleusement le formatage Markdown :
    *   **Titres :** Utilisez la hiérarchie `#`, `##`, `###` pour structurer le contenu.
    *   **Listes :** Utilisez `*` ou `-` pour les listes non ordonnées et `1.`, `2.` pour les listes numérotées.
    *   **Blocs de Code :** Encadrez les blocs de code avec des triple backticks (``````) et spécifiez le langage (ex: ````gdscript`).
    *   **Liens :** Utilisez le format `[Texte du lien](URL_EXEMPLE_OU_CHEMIN_RELATIF_ICI) ` pour les liens externes et internes. Pour les liens internes, utilisez toujours des chemins relatifs (ex: `./chemin/du/fichier.md` ou `../chemin/du/fichier.md`).
*   **Gestion des Références et Citations :** Incluez des références claires pour toute information factuelle ou externe, idéalement avec des liens directs vers la source. Utilisez des blocs de citation (`>`) pour les citations longues.
*   **Métadonnées Standardisées :** Un bloc de métadonnées (Auteur, Date, Version, Tags/Mots-clés) doit être inclus au début de chaque document.
*   **Mises à Jour :** Lors des mises à jour, assurez-vous de ne pas rompre les liens internes ou externes. Mettez à jour toutes les références si des sections sont déplacées ou renommées.

## 4. Structure des Dossiers

La documentation est organisée de manière logique pour faciliter la navigation :

*   **`README.md` :** Le point d'entrée principal de chaque dossier, offrant une vue d'ensemble et des liens vers les documents clés.
*   **`contributions.md` :** Ce document, qui guide les contributeurs.
*   **`summary.md` :** Une table des matières détaillée de toute la documentation (si applicable).
*   **`templates/` :** Contient tous les modèles de fichiers Markdown à utiliser pour la création de nouveaux documents.
*   Les autres dossiers sont organisés par thématique (ex: `general/`, `game_design/`, `technical_overview/`).

## 5. Processus de Création de Fichier avec Template

Le processus de création d'un nouveau document via un template se déroule en plusieurs étapes :

1.  **Sélection du Template :** Choisissez le modèle le plus approprié dans le dossier `templates/`.
2.  **Copie du Contenu :** Copiez le contenu du template dans un nouveau fichier.
3.  **Renommage :** Renommez le nouveau fichier selon les **Conventions de Nommage des Fichiers** décrites ci-dessus.
4.  **Rédaction :** Remplissez le contenu en respectant le **Formatage Markdown Standard** et les **Directives Spécifiques pour l'IA Manus**.
5.  **Mise à Jour des Liens :** Mettez à jour le `README.md` du dossier parent et, si nécessaire, le `summary.md` pour inclure le nouveau document.

## 6. Références

*   [Conventions Générales](../conventions_directives/conventions_generales.md)
*   [Conventions de Codage GDScript](../conventions_directives/coding_conventions.md)
*   [Directives de Documentation](../conventions_directives/documentation_guidelines.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

