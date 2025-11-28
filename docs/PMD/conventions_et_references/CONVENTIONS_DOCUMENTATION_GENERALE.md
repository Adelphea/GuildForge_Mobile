# Conventions de Documentation Générale - GuildForge Mobile

**Auteur :** Manus AI
**Date :** 28 Novembre 2025
**Version :** 1.3 (Fusion de 1.2 et 1.1)
**Tags :** [documentation, rédaction, Markdown, cohérence, qualité, conventions]

Ce document établit les conventions de rédaction, de formatage et de structure pour l'ensemble de la documentation du projet GuildForge Mobile. Il vise à assurer la clarté, la cohérence et la maintenabilité de toutes les ressources documentaires.

---

## Table des Matières (Prop 9)

1.  [Introduction](#1-introduction)
2.  [Principes Généraux de Rédaction](#2-principes-généraux-de-rédaction)
3.  [Formatage Markdown](#3-formatage-markdown)
4.  [Structure des Documents](#4-structure-des-documents)
5.  [Métadonnées Obligatoires](#5-métadonnées-obligatoires)
6.  [Gestion des Références et Liens](#6-gestion-des-références-et-liens)
7.  [Mise à Jour et Maintenance](#7-mise-à-jour-et-maintenance)
8.  [Historique des Révisions](#8-historique-des-révisions)

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

1.  **En-tête de Métadonnées** (voir section 5).
2.  **Titre Principal** (`#`).
3.  **Table des Matières** (cliquable).
4.  **Introduction** (résumé du contenu et objectif).
5.  **Sections Détaillées** (corps du document).
6.  **Références** (liens externes ou internes).
7.  **Historique des Révisions** (voir section 8).

## 5. Métadonnées Obligatoires (Prop 10)

Chaque document doit commencer par les métadonnées suivantes, immédiatement après le titre principal :

*   **Auteur :** Nom du rédacteur principal ou de l'équipe.
*   **Date :** Date de la dernière révision majeure (format JJ Mois AAAA).
*   **Version :** Numéro de version (ex: 1.0, 1.1, 2.0).
*   **Tags :** Liste de mots-clés pertinents pour la recherche.

Exemple :
```markdown
**Auteur :** Manus AI
**Date :** 28 Novembre 2025
**Version :** 1.0
**Tags :** [gdd, système, monde, biomes]
```

## 6. Gestion des Références et Liens

*   **Liens Relatifs :** Utiliser des chemins relatifs pour les liens internes au dépôt.
*   **Liens Absolus :** Utiliser des liens absolus pour les références externes.
*   **Vérification :** Les liens doivent être vérifiés à chaque révision majeure.

## 7. Mise à Jour et Maintenance

*   **Fréquence :** Les documents doivent être révisés au moins une fois par phase de développement majeure.
*   **Propriété :** Le responsable de la maintenance du document est listé dans le fichier `OWNERS.md` de la section parente.

## 8. Historique des Révisions

(Cette section sera complétée par l'historique des versions précédentes.)

---

## Références

*   [Principes Fondamentaux du Projet GuildForge Mobile](./PRINCIPES_FONDAMENTAUX.md)
*   [Conventions de Codage GDScript](./conventions_codage.md)
*   [Conventions de Nommage des Fichiers et Dossiers](./conventions_nommage.md)
*   [Conventions de Nommage des Assets Généraux](./CONVENTIONS_ASSETS_GENERAUX.md)
*   [Conventions de Configuration](./CONVENTIONS_CONFIGURATION.md)
