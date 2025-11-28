# Guide de Contribution au Projet GuildForge Mobile

Bienvenue contributeur ! Ce document est votre guide pour comprendre la structure du dépôt et les conventions à suivre pour toute modification.

## 1. Structure du Dépôt (GDD/TDD/PMD)

Le dépôt est organisé autour de trois piliers de documentation :

| Dossier | Nom Complet | Rôle | Propriétaire |
| :--- | :--- | :--- | :--- |
| **docs/GDD** | Game Design Document | Contient la conception du jeu, les systèmes, le lore, l'art et l'audio. | Utilisateur |
| **docs/TDD** | Technical Design Document | Contient l'architecture logicielle, les outils, les tests et les conventions de code. | Manus AI |
| **docs/PMD** | Project Management Document | Contient la gestion de projet, la feuille de route, les conventions de travail et les références. | Utilisateur & Manus AI |

## 2. Conventions de Fichiers et de Numérotation

*   **Numérotation du GDD :** Les systèmes de jeu dans `docs/GDD` sont numérotés de `00` à `12` par ordre de priorité et de dépendance. **Toute nouvelle section doit respecter cette séquence.**
*   **Statut des Documents :** Chaque document doit inclure un statut clair dans son en-tête (YAML Front Matter) :
    *   `Statut: Brouillon` (Travail en cours)
    *   `Statut: En Revue` (Prêt pour la relecture)
    *   `Statut: Finalisé` (Approuvé)
*   **Profondeur des Dossiers :** Maintenir une profondeur de dossier de **4 à 5 niveaux maximum**.

## 3. Conventions de Code et de Documentation

*   **Conventions de Nommage :** Se référer à `docs/PMD/CONVENTIONS_ET_REFERENCES/conventions_nommage.md` pour les règles de nommage des fichiers, dossiers et variables.
*   **Glossaire :** Tous les termes spécifiques au projet doivent être définis dans `docs/PMD/CONVENTIONS_ET_REFERENCES/glossaire.md`.

## 4. Workflow Git (Propositions d'Optimisation)

Les principes suivants doivent être respectés pour maintenir un historique propre :

*   **Commits Atomiques :** Chaque commit doit représenter un changement logique unique.
*   **Messages de Commit :** Utiliser des messages clairs et concis.
*   **Politique de Fusion :** Les Pull Requests doivent être fusionnées en utilisant le **Squash** pour maintenir un historique linéaire.
*   **Déplacement de Fichiers :** Toujours utiliser `git mv` pour renommer ou déplacer des fichiers.

## 5. Gestion des Assets

*   **Emplacement :** Tous les fichiers non-Markdown (images, schémas, etc.) doivent être stockés dans le dossier **`/data`** à la racine du projet.
*   **Nommage des Assets :** Utiliser un préfixe clair (ex: `GDD_Monde_Map.png`).
