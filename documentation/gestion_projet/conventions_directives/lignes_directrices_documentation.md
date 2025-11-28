# Directives de Documentation - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 12 Octobre 2025
**Version :** 1.1
**Tags :** [documentation, rédaction, Markdown, cohérence, qualité, conventions]

Ce document établit les directives pour la rédaction et le formatage de la documentation du projet GuildForge Mobile. L'objectif est d'assurer la clarté, la cohérence, l'efficacité et la qualité générale de toutes les ressources documentaires, facilitant ainsi leur utilisation et leur maintenance.

---

## Table des Matières

1.  [Introduction](#1-introduction)
2.  [Principes Généraux de Rédaction](#2-principes-généraux-de-rédaction)
3.  [Formatage Markdown](#3-formatage-markdown)
4.  [Structure des Documents](#4-structure-des-documents)
5.  [Gestion des Références et Liens](#5-gestion-des-références-et-liens)
6.  [Mise à Jour et Maintenance](#6-mise-à-jour-et-maintenance)
7.  [Références](#7-références)

---

## 1. Introduction

Une documentation de haute qualité est aussi cruciale que le code lui-même. Elle sert de référence pour les développeurs, les concepteurs et toute personne impliquée dans le projet. Ces directives visent à standardiser la manière dont la documentation est créée et maintenue, en particulier dans un environnement où l'IA générative est un outil clé.

## 2. Principes Généraux de Rédaction

*   **Clarté et Concision :** Rédiger des phrases claires, directes et concises. Éviter le jargon inutile et les tournures de phrases complexes.
*   **Précision :** S'assurer que toutes les informations sont exactes et à jour. Vérifier les faits et les chiffres.
*   **Cohérence :** Maintenir un ton, un style et une terminologie uniformes à travers tous les documents.
*   **Public Cible :** Adapter le contenu au public visé (développeurs, concepteurs, etc.).
*   **Langue :** La langue de travail principale est le français. Utiliser un français correct, sans fautes d'orthographe ou de grammaire.

## 3. Formatage Markdown

La documentation utilise le format Markdown pour sa simplicité et sa lisibilité. Respecter les conventions suivantes :

*   **Titres :** Utiliser `#` pour les titres de niveau 1, `##` pour les titres de niveau 2, etc. (jusqu'à 3 ou 4 niveaux maximum).
*   **Paragraphes :** Séparer les paragraphes par une ligne vide.
*   **Listes :** Utiliser `*` ou `-` pour les listes non ordonnées, et `1.`, `2.` pour les listes ordonnées.
*   **Blocs de Code :** Encadrer les blocs de code par des triple backticks (``````) et spécifier la langue (ex: ````gdscript`).
*   **Texte en Gras/Italique :** Utiliser `**texte**` pour le gras et `*texte*` pour l'italique.
*   **Liens :** Utiliser le format `[Texte du lien](URL_EXEMPLE_OU_CHEMIN_RELATIF_ICI) ` pour les liens externes et internes.
*   **Tableaux :** Utiliser la syntaxe Markdown pour les tableaux afin d'organiser les données structurées.

## 4. Structure des Documents

Chaque document doit idéalement suivre une structure logique :

*   **Métadonnées :** En début de document, inclure :
    *   `Auteur :` (ex: Manus AI, Nom du Développeur)
    *   `Date :` (Date de dernière modification)
    *   `Version :` (Numéro de version)
    *   `Tags :` (Mots-clés pertinents entre crochets `[]`)
*   **Résumé :** Un court paragraphe (1-3 phrases) décrivant l'objectif principal du document.
*   **Table des Matières :** Pour les documents longs, une table des matières générée automatiquement ou manuellement pour faciliter la navigation.
*   **Sections et Sous-sections :** Organiser le contenu en sections logiques avec des titres clairs.
*   **Références :** Une section `## Références` à la fin du document, listant toutes les sources citées avec des liens cliquables.

## 5. Gestion des Références et Liens

*   **Références Internes :** Utiliser des liens relatifs pour les documents internes au projet. Mettre à jour les liens si les fichiers sont renommés ou déplacés.
*   **Références Externes :** Fournir des liens complets et cliquables pour toutes les sources externes (documentation Godot, articles, etc.).
*   **Citations :** Utiliser des blocs de citation (`>`) pour les extraits de texte importants provenant d'autres sources.

## 6. Mise à Jour et Maintenance

*   **Journal des Modifications (Changelog) :** Pour les documents clés, maintenir un journal des modifications en fin de document pour suivre les évolutions.
*   **Vérification Régulière :** Revoir et mettre à jour la documentation régulièrement pour s'assurer de son exactitude et de sa pertinence.
*   **Suppression/Archivage :** Supprimer les informations obsolètes ou les déplacer vers un dossier d'archives si elles peuvent encore être utiles.

## 7. Références

*   [Conventions Générales](./conventions_generales.md)
*   [Conventions de Codage GDScript](./coding_conventions.md)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

