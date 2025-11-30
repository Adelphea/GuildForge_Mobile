# Conventions Générales (Documentation et Nommage)

**Chemin du Fichier :** `PMD/conventions_et_references/conventions_generales.md`
**Statut :** Brouillon

## I. Conventions de Documentation (Format et Structure)

## I. Conventions Rédactionnelles et Terminologiques

Ces règles garantissent l'uniformité et la cohérence du contenu à travers les documents GDD, TDD et PMD.

| # | Règle | Description | Implication |
| :--- | :--- | :--- | :--- |
| 1 | **Terminologie Unifiée** | Utilisation obligatoire des termes définis dans le Glossaire du projet. | Assure la cohérence des termes techniques (ex: Def, CompProperties, CR). |
| 2 | **Style Impersonnel** | Utilisation de la voix passive ou du style impersonnel pour la documentation technique et les règles. | Évite la subjectivité et maintient un ton professionnel. |
| 3 | **Clarté et Précision** | Éviter les ambiguïtés, les jugements de valeur et les formulations subjectives. | Chaque phrase doit avoir un sens unique et précis. |
| 4 | **Référence Externe** | Toute référence à des concepts externes (RimWorld, Godot Engine) doit être clairement identifiée. | Facilite la compréhension pour les nouveaux contributeurs. |
| 5 | **Utilisation des Tableaux** | Privilégier les tableaux pour la présentation des données structurées (règles, listes, schémas). | Améliore la lisibilité et la structuration des informations. |
| 6 | **Voix Active (GDD)** | Utiliser la voix active et le présent pour décrire les mécanismes de jeu. | Rend le GDD plus engageant et direct. |
| 7 | **Voix Passive (TDD/PMD)** | Utiliser la voix passive ou le style impersonnel pour les règles techniques et de gestion. | Maintient l'objectivité et l'autorité. |
| 8 | **Police Grasse** | Utiliser la police **grasse** pour mettre en évidence les termes clés, les définitions ou les actions critiques. | Améliore la lisibilité et le scan rapide. |
| 9 | **Code Inline** | Utiliser les `backticks` pour les noms de fichiers, de classes, de variables ou de fonctions. | Distingue clairement le code du texte courant. |
| 10 | **Acronymes** | Définir tout acronyme à sa première occurrence dans chaque document. | Assure la compréhension pour tous les lecteurs. |
| 11 | **Chiffres** | Écrire les chiffres de zéro à neuf en toutes lettres (sauf dans les tableaux ou les mesures). | Améliore la qualité rédactionnelle. |
| 12 | **Listes à Puces** | Réserver les listes à puces (`*` ou `-`) aux énumérations simples et non séquentielles. | Clarté structurelle. |
| 13 | **Listes Numérotées** | Réserver les listes numérotées aux étapes séquentielles ou aux priorités. | Clarté procédurale. |
| 14 | **Éviter le Futur Simple** | Utiliser le présent ou le futur proche pour les descriptions de fonctionnalités. | Maintient un ton plus immédiat et moins spéculatif. |
| 15 | **Interdiction des Pronoms** | Interdiction des pronoms personnels (je, tu, nous) dans la documentation technique. | Maintient l'objectivité. |
| 16 | **Citations** | Utiliser les blocs de citation (`>`) pour les définitions formelles ou les extraits de source. | Mise en évidence des informations clés. |
| 17 | **Titre de Section** | Chaque section doit commencer par un paragraphe d'introduction. | Assure une transition fluide entre les sections. |
| 18 | **Titre de Tableau** | Chaque tableau doit être précédé d'un titre ou d'une brève description. | Facilite la référence et la compréhension. |
| 19 | **Langue Technique** | Utiliser les termes techniques Godot/RimWorld sans les traduire (ex: `Resource`, `Def`, `CompProperties`). | Maintient la précision technique. |
| 20 | **Cohérence des Majuscules** | Les titres de sections doivent utiliser la majuscule uniquement au début du premier mot. | Uniformité du style. |

## II. Conventions de Documentation (Format et Structure)

Ces règles s'appliquent à tous les fichiers Markdown (`.md`) du dépôt (GDD, TDD, PMD).

| # | Règle | Description | Exemple |
| :--- | :--- | :--- | :--- |
| 21 | **Format** | Utilisation exclusive du format **Markdown** (GitHub Flavored Markdown). | `README.md`, `systeme_combat.md` |
| 22 | **YAML Front Matter** | Chaque document doit commencer par un bloc de métadonnées YAML. | `---` <br> `statut: Brouillon` <br> `version: 0.1` <br> `auteur: Manus AI` <br> `date: 2025-11-29` <br> `---` |
| 23 | **Statut** | Le statut doit être clairement indiqué : `Brouillon`, `En Revue`, `Finalisé`, `Obsolète`. | `statut: Finalisé` |
| 24 | **Historique des Révisions** | Une section "Historique des Révisions" doit être présente à la fin du document. | Tableau listant Version, Date, Auteur, Description du Changement. |
| 25 | **Liens Relatifs** | Utilisation exclusive des liens relatifs pour naviguer entre les documents. | `[Voir le TDD](../TDD/README.md)` |
| 26 | **Langue** | La langue de rédaction est le **Français**. | Tous les textes, titres et descriptions. |
| 27 | **Tables** | Utilisation des tables pour organiser les données structurées (règles, listes, schémas). | Voir les tables dans ce document. |
| 28 | **Titres de Niveau 1** | Le titre de niveau 1 (`#`) est réservé au titre principal du document. | `# Conventions Générales` |
| 29 | **Titres de Niveau 2** | Les titres de niveau 2 (`##`) sont réservés aux sections principales (I, II, III, etc.). | `## I. Conventions Rédactionnelles` |
| 30 | **Titres de Niveau 3** | Les titres de niveau 3 (`###`) sont réservés aux sous-sections. | `### II.1. Procédure de Démarrage` |
| 31 | **Titres de Niveau 4+** | Interdiction d'utiliser des titres de niveau 4 ou plus. | Maintient une hiérarchie simple. |
| 32 | **Longueur de Ligne** | Les lignes de texte ne doivent pas dépasser 80 caractères (sauf les liens et les tableaux). | Facilite la revue de code (diff) et la lisibilité Git. |
| 33 | **Sauts de Ligne** | Utiliser deux sauts de ligne pour séparer les paragraphes. | Clarté visuelle. |
| 34 | **Indentation des Listes** | Les listes à puces et numérotées doivent être indentées avec 4 espaces. | Uniformité de l'indentation. |
| 35 | **Blocs de Code** | Les blocs de code doivent spécifier la langue (ex: ````gdscript`). | Permet la coloration syntaxique. |
| 36 | **Images** | Toutes les images doivent inclure un texte alternatif (`alt text`). | Accessibilité et clarté. |
| 37 | **Chemins de Fichiers** | Les chemins de fichiers doivent utiliser le format absolu à partir de la racine du dépôt. | Référence unique et non ambiguë. |
| 38 | **Mise à Jour du Statut** | Le champ `statut` doit être mis à jour à chaque validation majeure. | Reflète l'état actuel du document. |
| 39 | **Documents Finalisés** | Les documents `Finalisé` ne peuvent être modifiés que par un `FIX` ou un `FEAT` documenté dans l'Historique. | Sécurité contre les changements non validés. |
| 40 | **Vérification des Liens** | Tous les liens hypertextes (internes et externes) doivent être vérifiés avant le commit. | Évite les liens brisés. |

## III. Conventions de Nommage (Fichiers et Dossiers)

Ces règles garantissent la cohérence de l'arborescence du dépôt.

| # | Règle | Description | Exemple (Valide) |
| :--- | :--- | :--- | :--- |
| 41 | **Dossiers** | Utilisation du **`snake_case`** (minuscules et underscores) pour tous les noms de dossiers. | `conventions_et_references`, `systeme_combat` |
| 42 | **Fichiers Markdown** | Utilisation du **`snake_case`** pour tous les noms de fichiers Markdown. | `principes_fondamentaux.md`, `gestion_donnees.md` |
| 43 | **Fichiers Spéciaux** | Les fichiers de haut niveau ou les README peuvent utiliser des majuscules. | `CONTRIBUTING.md`, `README.md` |
| 44 | **Numérotation GDD** | Les sections principales du GDD doivent utiliser une numérotation à deux chiffres. | `01_monde_du_jeu.md`, `02_systemes_base.md` |
| 45 | **Nommage des Assets** | Les noms d'assets (textures, sons) doivent suivre les conventions définies dans `conventions_techniques.md`. | Redirection vers le document technique. |
| 46 | **Nommage des Scènes** | Les scènes Godot doivent utiliser le `PascalCase`. | `MainMenu.tscn`, `CombatScene.tscn` |
| 47 | **Nommage des Scripts** | Les scripts Godot (`.gd`) doivent utiliser le `PascalCase`. | `DefManager.gd`, `CompProperties.gd` |
| 48 | **Nommage des Resources** | Les ressources Godot (`.tres`) doivent utiliser le `snake_case` pour les instances de données. | `player_stats.tres`, `sword_def.tres` |

## IV. Conventions de Commit

Ces règles garantissent un historique Git clair et lisible.

| # | Règle | Description | Exemple (Valide) |
| :--- | :--- | :--- | :--- |
| 49 | **Format** | Utilisation du format **`<TYPE>: <Description>`** (Conventionnal Commits légère). | `DOC: Finalisation du CONTRIBUTING.md` |
| 50 | **Types** | Les types de commit obligatoires sont : `DOC` (Documentation), `FEAT` (Nouvelle fonctionnalité), `FIX` (Correction de bug), `CHORE` (Tâches de maintenance), `REFACTOR` (Refactorisation). | `DOC: Ajout des conventions de nommage` |
| 51 | **Description** | La description doit être courte (max 50 caractères) et commencer par une majuscule. | `DOC: Ajout des conventions de nommage` |
| 52 | **Commit Atomique** | Chaque commit doit représenter un changement logique unique. | Éviter les commits qui mélangent code, documentation et assets. |
| 53 | **Commit de Documentation** | Les commits `DOC` ne doivent contenir que des modifications de fichiers Markdown. | Maintient la propreté de l'historique. |
| 54 | **Commit de Code** | Les commits `FEAT`, `FIX`, `REFACTOR` doivent inclure une référence aux conventions de code. | Assure la traçabilité. |
| 55 | **Langue du Commit** | La langue des messages de commit est le **Français**. | Cohérence avec la documentation. |
| 56 | **Références d'Issue** | Les commits qui résolvent une issue doivent inclure la référence (ex: `FIX: Correction du bug #123`). | Traçabilité des bugs. |
| 57 | **Commit de Fusion** | Les Pull Requests doivent être fusionnées en utilisant le **Squash** pour maintenir un historique linéaire. | Simplifie l'historique principal. |

---
*Ce document est soumis à validation avant d'être intégré au dépôt.*

## II. Conventions de Documentation (Format et Structure)

Ces règles s'appliquent à tous les fichiers Markdown (`.md`) du dépôt (GDD, TDD, PMD).

| Règle | Description | Exemple |
| :--- | :--- | :--- |
| **Format** | Utilisation exclusive du format **Markdown** (GitHub Flavored Markdown). | `README.md`, `systeme_combat.md` |
| **YAML Front Matter** | Chaque document doit commencer par un bloc de métadonnées YAML. | `---` <br> `statut: Brouillon` <br> `version: 0.1` <br> `auteur: Manus AI` <br> `date: 2025-11-29` <br> `---` |
| **Statut** | Le statut doit être clairement indiqué : `Brouillon`, `En Revue`, `Finalisé`, `Obsolète`. | `statut: Finalisé` |
| **Historique des Révisions** | Une section "Historique des Révisions" doit être présente à la fin du document. | Tableau listant Version, Date, Auteur, Description du Changement. |
| **Liens Relatifs** | Utilisation exclusive des liens relatifs pour naviguer entre les documents. | `[Voir le TDD](../TDD/README.md)` |
| **Langue** | La langue de rédaction est le **Français**. | Tous les textes, titres et descriptions. |
| **Tables** | Utilisation des tables pour organiser les données structurées (règles, listes, schémas). | Voir les tables dans ce document. |

## III. Conventions de Nommage (Fichiers et Dossiers)

Ces règles garantissent la cohérence de l'arborescence du dépôt.

| Règle | Description | Exemple (Valide) | Exemple (Invalide) |
| :--- | :--- | :--- | :--- |
| **Dossiers** | Utilisation du **`snake_case`** (minuscules et underscores) pour tous les noms de dossiers. | `conventions_et_references`, `systeme_combat` | `SystemeCombat`, `systeme-combat` |
| **Fichiers** | Utilisation du **`snake_case`** pour tous les noms de fichiers Markdown. | `principes_fondamentaux.md`, `gestion_donnees.md` | `PrincipesFondamentaux.md`, `gestion-donnees.md` |
| **Fichiers Spéciaux** | Les fichiers de haut niveau ou les README peuvent utiliser des majuscules. | `CONTRIBUTING.md`, `README.md` | `read_me.md` |
| **Numérotation** | Les sections principales du GDD peuvent utiliser une numérotation à deux chiffres. | `01_monde_du_jeu.md`, `02_systemes_base.md` | `1_monde.md` |

## IV. Conventions de Commit

Ces règles garantissent un historique Git clair et lisible.

| Règle | Description | Exemple (Valide) |
| :--- | :--- | :--- |
| **Format** | Utilisation du format **`<TYPE>: <Description>`** (Conventionnal Commits légère). | `DOC: Finalisation du CONTRIBUTING.md` |
| **Types** | Les types de commit obligatoires sont : `DOC` (Documentation), `FEAT` (Nouvelle fonctionnalité), `FIX` (Correction de bug), `CHORE` (Tâches de maintenance), `REFACTOR` (Refactorisation). | `DOC: Ajout des conventions de nommage` |
| **Description** | La description doit être courte (max 50 caractères) et commencer par une majuscule. | `DOC: Ajout des conventions de nommage` |

---
*Ce document est soumis à validation avant d'être intégré au dépôt.*
