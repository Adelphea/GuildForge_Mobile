# Analyse Comparative : Sérialisation des Custom Resources (.tres vs .res)

## I. Contexte et Objectif

L'une des incompatibilités critiques identifiées (P1) concerne la sérialisation des Custom Resources (CR) au format `.tres` (texte), jugée trop lente pour un jeu mobile avec un grand volume de données. Cette analyse compare les formats `.tres` et `.res` pour déterminer la meilleure pratique pour le projet GuildForge Mobile.

## II. Comparatif Technique des Formats Godot

| Caractéristique | Format `.tres` (Texte) | Format `.res` (Binaire) | Recommandation Mobile |
| :--- | :--- | :--- | :--- |
| **Lisibilité/Édition** | **Haute.** Lisible et éditable par l'humain. Idéal pour le *Version Control* (Git). | **Faible.** Illisible, binaire. Non éditable directement. | **`.tres`** (Pour le développement et le Version Control). |
| **Taille du Fichier** | **Grande.** Contient des chaînes de caractères et des métadonnées. | **Petite.** Stockage optimisé des données brutes. | **`.res`** (Pour la taille réduite sur mobile). |
| **Vitesse de Chargement** | **Lente.** Nécessite un parsing de texte et une conversion en mémoire. | **Très Rapide.** Chargement direct des données brutes en mémoire. | **`.res`** (Crucial pour la performance mobile). |
| **Utilisation Typique** | Ressources créées par l'éditeur ou modifiées par le développeur. | Ressources utilisées en production, optimisées pour le chargement. | **`.res`** (Pour le jeu final). |
| **Conversion Automatique** | **Oui.** Godot convertit automatiquement les `.tres` en `.res` lors de l'exportation du jeu. | **N/A.** Format binaire final. | **`.res`** (Le moteur le fait pour nous). |

## III. Meilleures Pratiques Godot pour le Développement Mobile

La recherche confirme la meilleure pratique pour les jeux à forte densité de données (comme GuildForge Mobile) :

> **Meilleure Pratique :** Utiliser le format `.tres` (texte) pendant la phase de **développement** pour la lisibilité, le débogage et la gestion de version (Git). Cependant, pour la **production** et la **performance mobile**, il est impératif de s'assurer que le jeu utilise le format binaire `.res`.

**Point Critique :** Godot convertit **automatiquement** les `.tres` en `.res` lors de l'exportation du jeu final [5] [8].

## IV. Recommandations et Mise à Jour du TDD

L'incompatibilité absolue (P1) est partiellement levée, mais nécessite une clarification dans le TDD :

1.  **Maintenir le Pipeline XML -> `.tres` :** Le pipeline Python doit continuer à générer des fichiers `.tres` (texte) pour la lisibilité et le Version Control.
2.  **Mettre à Jour le TDD-01 :** La spécification doit être modifiée pour refléter que :
    *   Les CR sont stockées en `.tres` **pendant le développement**.
    *   Les CR sont chargées en `.res` **en production** (grâce à l'export Godot).
    *   **Nouvelle Incompatibilité (P1-bis) :** Le `DefManager` doit utiliser `ResourceLoader.load_threaded_request()` pour le chargement asynchrone, et non un simple `load()`, pour maximiser la performance du chargement des `.res` en production.

**Proposition de Révision du TDD-01 (P1) :**

| Ancien TDD-01 | Nouveau TDD-01 | Justification |
| :--- | :--- | :--- |
| **Format de Stockage :** Custom Resources (CR) Godot (`.tres`) générées par le pipeline. | **Format de Stockage :** Custom Resources (CR) Godot (`.tres`) **en développement**, sérialisées en **`.res` (binaire)** à l'exportation. | Clarification de la pratique Godot standard pour lever l'incompatibilité P1. |
| **DefManager :** Charger tous les fichiers `.tres` du répertoire `res://data/defs/` au démarrage. | **DefManager :** Charger tous les fichiers `.res` (ou `.tres` en mode debug) en utilisant **`ResourceLoader.load_threaded_request()`** pour le chargement asynchrone et optimisé. | Intègre la meilleure pratique Godot pour le chargement asynchrone sur mobile (P1-bis). |

**Validation Requise :**
Veuillez valider cette analyse et la proposition de révision du TDD-01.

**Votre réponse doit être :**
*   **"Je valide l'analyse et la révision du TDD-01."** pour que je passe à la Phase 27 (Soumission de l'analyse).
*   **"Je demande une modification : [détails]"** pour réviser l'analyse.
*   **"Je refuse l'analyse."** pour mettre fin au cycle.

## V. Références

[1] Fileformat differences? (.tres .res .scn .material etc.) - Help
[5] Resources — Godot Engine (3.2) documentation in English
[8] Resources — Godot Engine (stable) documentation in English
