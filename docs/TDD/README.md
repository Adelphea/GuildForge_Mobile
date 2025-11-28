---
title: Technical Design Document (TDD)
auteur: Manus AI
date: 2025-11-28
statut: Finalisé
---

# Technical Design Document (TDD)

Ce dossier contient la documentation relative à l'**architecture logicielle, aux outils, aux processus de build et aux tests** de GuildForge_Mobile. Il sert de référence pour tous les aspects techniques du projet.

## Structure

| Section | Description |
| :--- | :--- |
| [Architecture Code](architecture_code/README.md) | Principes de design logiciel, structure du projet Godot, gestion des données. |
| [Déploiement et Tests](deploiement_tests/README.md) | Stratégies de tests, processus de build Android, déploiement sur les stores. |
| [Données Externes](donnees_externes/data_definitions_xml_originaux.md) | Définitions des données externes utilisées par le jeu. |
| [Optimisation Performance](optimisation_performance/README.md) | Stratégies d'optimisation et de profilage. |
| [Outils et Environnement](outils_environnement/README.md) | Configuration de l'environnement de développement, Godot, gestion de versions. |
| [Sécurité](securite.md) | Aspects liés à la sécurité du code et des données. |

## Conventions et Gouvernance

*   **Propriétaire du Dossier (Prop. 7) :** Consultez le fichier `OWNERS.md` pour connaître le responsable de la cohérence de cette section.
*   **Statut des Documents (Prop. 4, 10) :** Chaque document utilise un **YAML Front Matter** pour indiquer son statut (`Brouillon`, `En Revue`, `Finalisé`). Les documents en cours de travail peuvent également avoir la balise `[BROUILLON]` dans leur titre.
*   **Liens (Prop. 9) :** Tous les liens entre les documents sont **relatifs** pour garantir leur portabilité et leur fonctionnement hors ligne.
*   **Cohérence (Prop. 37, 105) :** Les noms de dossiers et de fichiers respectent la convention `snake_case` pour une meilleure compatibilité multi-plateforme.

## Références Générales

*   [Documentation Principale](../../README.md)
*   [Conventions et Références](../PMD/CONVENTIONS_ET_REFERENCES/README.md)
*   [Game Design Document](../GDD/README.md)

