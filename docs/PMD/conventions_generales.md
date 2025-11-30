---
statut: Finalisé
version: 1.0
auteur: Manus AI
date: 2025-11-30
tags: [conventions, documentation, nommage, workflow, qualité]
---

# Conventions Générales (Documentation et Nommage) - Version Rationalisée

## I. Conventions Rédactionnelles et Terminologiques (Qualité du Contenu)

Ces règles garantissent l'uniformité, la cohérence et la qualité du contenu.

| # | Règle | Description | Implication |
| :--- | :--- | :--- | :--- |
| 1 | **Terminologie Unifiée & Glossaire** | Utilisation obligatoire des termes définis dans le Glossaire du projet. Définir tout acronyme à sa première occurrence. | Assure la cohérence technique et la compréhension. |
| 2 | **Clarté, Précision et Objectivité** | Éviter les ambiguïtés, les jugements de valeur et les formulations subjectives. Utiliser le style impersonnel (voix passive ou style neutre) pour la documentation technique (TDD/PMD). | Maintient l'objectivité et la rigueur. |
| 3 | **Style de Voix (GDD vs TDD/PMD)** | Utiliser la voix active et le présent pour décrire les mécanismes de jeu (GDD). Utiliser le style impersonnel pour les règles techniques et de gestion (TDD/PMD). | Adapte le ton au type de document. |
| 4 | **Référence Externe et Technique** | Toute référence à des concepts externes (RimWorld, Godot Engine) doit être clairement identifiée. Utiliser les termes techniques Godot/RimWorld sans les traduire. | Maintient la précision technique. |
| 5 | **Formatage du Texte** | Utiliser la police **grasse** pour les termes clés. Utiliser les `backticks` pour les noms de fichiers, de classes, de variables ou de fonctions. | Améliore la lisibilité et le scan rapide. |
| 6 | **Structuration du Texte** | Chaque section doit commencer par un paragraphe d'introduction. Utiliser les blocs de citation (`>`) pour les définitions formelles. | Assure une transition fluide et met en évidence les informations clés. |
| 7 | **Chiffres et Listes** | Écrire les chiffres de zéro à neuf en toutes lettres. Réserver les listes numérotées aux étapes séquentielles et les listes à puces aux énumérations simples. | Améliore la qualité rédactionnelle et la clarté procédurale. |

## II. Conventions de Documentation (Format et Structure)

Ces règles s'appliquent à tous les fichiers Markdown (`.md`) du dépôt.

| # | Règle | Description | Exemple (Valide) |
| :--- | :--- | :--- | :--- |
| 8 | **Format et Langue** | Utilisation exclusive du format **Markdown** (GitHub Flavored Markdown). La langue de rédaction est le **Français**. | `README.md`, `systeme_combat.md` |
| 9 | **YAML Front Matter Obligatoire** | Chaque document doit commencer par un bloc de métadonnées YAML incluant obligatoirement : `statut`, `version`, `auteur`, `date`. | `statut: Finalisé` |
| 10 | **Gestion des Révisions** | Une section "Historique des Révisions" doit être présente à la fin du document. Le champ `statut` doit être mis à jour à chaque validation majeure. | Sécurité contre les changements non validés. |
| 11 | **Hiérarchie des Titres** | Le titre de niveau 1 (`#`) est réservé au titre principal. Les titres de niveau 2 (`##`) sont réservés aux sections principales (I, II, III, etc.). Interdiction d'utiliser des titres de niveau 4 ou plus. | Maintient une hiérarchie simple et claire. |
| 12 | **Cohérence Visuelle** | Les titres de sections doivent utiliser la majuscule uniquement au début du premier mot. Utiliser deux sauts de ligne pour séparer les paragraphes. | Uniformité du style. |
| 13 | **Liens et Références** | Utilisation exclusive des liens relatifs pour naviguer entre les documents. Tous les liens hypertextes doivent être vérifiés avant le commit. | Évite les liens brisés et assure la portabilité. |
| 14 | **Contenu Structuré** | Privilégier les tableaux pour organiser les données structurées. Les blocs de code doivent spécifier la langue (ex: ````gdscript`). | Améliore la lisibilité et la structuration. |
| 15 | **Lisibilité Git** | Les lignes de texte ne doivent pas dépasser 80 caractères (sauf les liens et les tableaux). L'indentation des listes doit être de 4 espaces. | Facilite la revue de code (diff) et la lisibilité Git. |

## III. Conventions de Nommage (Fichiers et Dossiers)

Ces règles garantissent la cohérence de l'arborescence du dépôt.

| # | Règle | Description | Exemple (Valide) |
| :--- | :--- | :--- | :--- |
| 16 | **Nommage Général** | Utilisation du **`snake_case`** (minuscules et underscores) pour tous les noms de dossiers et de fichiers Markdown. | `conventions_et_references`, `principes_fondamentaux.md` |
| 17 | **Nommage Spécifique** | Les fichiers de haut niveau (`CONTRIBUTING.md`, `README.md`) peuvent utiliser des majuscules. Les sections principales du GDD doivent utiliser une numérotation à deux chiffres. | `01_monde_du_jeu.md` |
| 18 | **Nommage Godot (Scripts/Scènes)** | Les scripts Godot (`.gd`) et les scènes (`.tscn`) doivent utiliser le **`PascalCase`**. | `DefManager.gd`, `MainMenu.tscn` |
| 19 | **Nommage Godot (Resources/Assets)** | Les ressources Godot (`.tres`) doivent utiliser le **`snake_case`** pour les instances de données. Les noms d'assets doivent suivre les conventions définies dans `conventions_techniques.md`. | `player_stats.tres` |

## IV. Conventions de Commit

Ces règles garantissent un historique Git clair et lisible.

| # | Règle | Description | Exemple (Valide) |
| :--- | :--- | :--- | :--- |
| 20 | **Format et Types** | Utilisation du format **`<TYPE>: <Description>`** (Conventionnal Commits légère). Les types obligatoires sont : `DOC`, `FEAT`, `FIX`, `CHORE`, `REFACTOR`. | `DOC: Finalisation du CONTRIBUTING.md` |
| 21 | **Qualité du Commit** | La description doit être courte (max 50 caractères) et commencer par une majuscule. La langue des messages est le **Français**. | `DOC: Ajout des conventions de nommage` |
| 22 | **Atomicité et Documentation** | Chaque commit doit représenter un changement logique unique. Les commits `DOC` ne doivent contenir que des modifications de fichiers Markdown. | Évite les commits qui mélangent code et documentation. |
| 23 | **Traçabilité** | Les commits qui résolvent une issue doivent inclure la référence (ex: `FIX: Correction du bug #123`). Les Pull Requests doivent être fusionnées en utilisant le **Squash**. | Simplifie l'historique principal. |

---
*Ce document est finalisé et fait partie du Socle de Connaissances.*
