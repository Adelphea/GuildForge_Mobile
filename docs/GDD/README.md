---
title: Game Design Document (GDD)
auteur: Manus AI
date: 2025-11-28
statut: Finalisé
---

# Game Design Document (GDD)

Ce dossier contient la documentation relative au **contenu, aux règles et à l'expérience de jeu** de GuildForge_Mobile. Il est la référence centrale pour le développement et assure une vision unifiée et cohérente du projet.

## Structure et Systèmes de Jeu

Le GDD est organisé en systèmes de jeu numérotés, reflétant la nouvelle structure et la priorité des systèmes.

| Numéro | Système | Description |
| :--- | :--- | :--- |
| 00 | [Vision Globale](00_vision_globale.md) | Point de départ de la documentation. |
| 01 | [Système Monde](01_systeme_monde/README.md) | La base du jeu (génération procédurale, biomes, factions). |
| 02 | [Système Conteur IA](02_systeme_conteur_ia/README.md) | Le cœur de l'expérience de jeu (maîtres du récit, événements). |
| 03 | [Système Personnages](03_systeme_personnages/README.md) | Les entités principales (création, compétences, besoins). |
| 04 | [Système Faune et Flore](04_systeme_faune_et_flore/README.md) | Les ressources vivantes du monde. |
| 05 | [Système Construction](05_systeme_construction/README.md) | La création de structures et de zones. |
| 06 | [Système Ressources et Production](06_systeme_ressources_et_production/README.md) | La collecte et la transformation des ressources. |
| 07 | [Système Recherche et Progression](07_systeme_recherche_et_progression/README.md) | L'évolution technologique et la progression du joueur. |
| 08 | [Système Combat](08_systeme_combat/README.md) | Les mécaniques de combat et de défense. |
| 09 | [Système Économie et Commerce](09_systeme_economie_et_commerce/README.md) | Les échanges et la gestion des valeurs. |
| 10 | [Design Artistique](10_design_artistique/README.md) | La direction artistique et les assets visuels. |
| 11 | [Design Audio](11_design_audio/README.md) | L'ambiance sonore et la musique. |
| 12 | [Système Interface et UX](12_systeme_interface_et_ux/README.md) | L'interface utilisateur et l'expérience de jeu sur mobile. |

## Conventions et Gouvernance

*   **Propriétaire du Dossier (Prop. 7) :** Consultez le fichier `OWNERS.md` pour connaître le responsable de la cohérence de cette section.
*   **Statut des Documents (Prop. 4, 10) :** Chaque document utilise un **YAML Front Matter** pour indiquer son statut (`Brouillon`, `En Revue`, `Finalisé`). Les documents en cours de travail peuvent également avoir la balise `[BROUILLON]` dans leur titre.
*   **Liens (Prop. 9) :** Tous les liens entre les documents sont **relatifs** pour garantir leur portabilité et leur fonctionnement hors ligne.
*   **Cohérence (Prop. 37, 105) :** Les noms de dossiers et de fichiers respectent la convention `snake_case` pour une meilleure compatibilité multi-plateforme.

## Références Générales

*   [Documentation Principale](../../README.md)
*   [Conventions et Références](../PMD/CONVENTIONS_ET_REFERENCES/README.md)
*   [Architecture Technique](../TDD/README.md)

