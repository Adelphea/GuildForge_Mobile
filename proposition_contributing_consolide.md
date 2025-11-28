# Proposition de Consolidation : CONTRIBUTING.md

## Objectif

Consolider les informations de `CONTRIBUTING.md` et `docs/PMD/conventions_et_references/PRINCIPES_FONDAMENTAUX.md` en un seul fichier `CONTRIBUTING.md` à la racine du dépôt. Ce fichier servira de **point d'entrée unique** pour tout nouveau contributeur, couvrant à la fois la philosophie du projet et le guide pratique de contribution.

## Structure Proposée pour le Nouveau CONTRIBUTING.md

| Section | Source Principale | Contenu | Note |
| :--- | :--- | :--- | :--- |
| **1. Principes Fondamentaux** | `PRINCIPES_FONDAMENTAUX.md` | L'Introduction et les Principes Fondamentaux des Conventions (Cohérence, Lisibilité, Maintenabilité, Collaboration). | **Conservé intégralement** pour définir la philosophie. |
| **2. Structure du Dépôt** | `CONTRIBUTING.md` (Section 1) | Le tableau GDD/TDD/PMD et leur rôle. | **Conservé intégralement** pour l'orientation. |
| **3. Guide de Contribution** | `CONTRIBUTING.md` (Sections 2, 4, 5) | Instructions pratiques : Workflow Git, Numérotation des documents, Statut des documents. | **Conservé et réorganisé** pour le flux de travail. |
| **4. Conventions de Référence** | `PRINCIPES_FONDAMENTAUX.md` (Section 3) | Liens directs vers les documents de conventions détaillés (`conventions_codage.md`, `conventions_nommage.md`, etc.). | **Conservé et mis en évidence** pour la clarté. |
| **5. Gouvernance des Conventions** | `PRINCIPES_FONDAMENTAUX.md` (Section 4) | Le processus de validation et de mise à jour des conventions. | **Conservé intégralement** pour la formalisation. |
| **Déplacement/Suppression** | `CONTRIBUTING.md` (Section 5) | La règle sur l'emplacement des assets (`/data`) est **obsolète** et sera déplacée dans `CONVENTIONS_ASSETS_GENERAUX.md` ou `TDD/architecture_code/structure_projet_godot.md`. | **Supprimé** du `CONTRIBUTING.md` racine. |

## Proposition de Contenu (Nouveau CONTRIBUTING.md)

```markdown
# Guide de Contribution et Principes Fondamentaux - GuildForge Mobile

Bienvenue contributeur ! Ce document est le point d'entrée essentiel pour toute personne souhaitant contribuer au projet GuildForge Mobile. Il établit la philosophie du projet et vous guide à travers le processus de contribution.

---

## 1. Principes Fondamentaux des Conventions

L'adoption et le respect de ces conventions sont essentiels pour garantir la **Cohérence**, la **Lisibilité**, la **Maintenabilité** et la **Collaboration** au sein du projet.

*   **Cohérence :** Assurer une approche uniforme à travers l'ensemble du projet.
*   **Lisibilité :** Rendre le code et la documentation faciles à comprendre pour tous.
*   **Maintenabilité :** Simplifier les mises à jour et la correction des erreurs.
*   **Collaboration :** Faciliter le travail d'équipe en réduisant les ambiguïtés.

---

## 2. Structure du Dépôt (GDD/TDD/PMD)

Le dépôt est organisé autour de trois piliers de documentation. Toute contribution doit s'inscrire dans l'un de ces domaines :

| Dossier | Nom Complet | Rôle |
| :--- | :--- | :--- |
| **docs/GDD** | Game Design Document | Contient la conception du jeu, les systèmes, le lore, l'art et l'audio. |
| **docs/TDD** | Technical Design Document | Contient l'architecture logicielle, les outils, les tests et les conventions de code. |
| **docs/PMD** | Project Management Document | Contient la gestion de projet, la feuille de route, les conventions de travail et les références. |

---

## 3. Guide de Contribution Pratique

### 3.1. Workflow Git

1.  **Commits Atomiques :** Chaque commit doit représenter un changement logique unique.
2.  **Messages de Commit :** Utiliser des messages clairs et concis (ex: `GDD: Ajout des règles de combat à distance`).
3.  **Politique de Fusion :** Les Pull Requests doivent être fusionnées en utilisant le **Squash** pour maintenir un historique linéaire.
4.  **Déplacement de Fichiers :** Toujours utiliser `git mv` pour renommer ou déplacer des fichiers.

### 3.2. Statut et Numérotation des Documents

*   **Numérotation du GDD :** Les sections du GDD sont numérotées (ex: `01_systeme_monde`). **Toute nouvelle section doit respecter cette séquence.**
*   **Statut des Documents :** Chaque document doit inclure un statut clair dans son en-tête (Métadonnées) : `Statut: Brouillon`, `Statut: En Revue`, ou `Statut: Finalisé`.

---

## 4. Conventions de Référence

Avant de commencer à écrire ou coder, vous **devez** consulter les documents de conventions détaillés :

*   **Documentation Générale :** [CONVENTIONS_DOCUMENTATION_GENERALE.md](docs/PMD/conventions_et_references/CONVENTIONS_DOCUMENTATION_GENERALE.md)
*   **Nommage Fichiers/Dossiers :** [conventions_nommage.md](docs/PMD/conventions_et_references/conventions_nommage.md)
*   **Codage GDScript :** [conventions_codage.md](docs/PMD/conventions_et_references/conventions_codage.md)
*   **Nommage Assets :** [CONVENTIONS_ASSETS_GENERAUX.md](docs/PMD/conventions_et_references/CONVENTIONS_ASSETS_GENERAUX.md)
*   **Glossaire :** [glossaire.md](docs/PMD/conventions_et_references/glossaire.md)

---

## 5. Gouvernance des Conventions

Toute modification ou ajout aux conventions doit suivre un processus de validation formel :

1.  **Proposition :** Soumettre une proposition claire et argumentée (via une *Issue* ou un *Pull Request*).
2.  **Revue :** La proposition est examinée par les *Owners* de la section concernée.
3.  **Validation :** Après consensus, la convention est validée et intégrée.
4.  **Mise à Jour :** Le document de convention est mis à jour et la version est incrémentée.
```
