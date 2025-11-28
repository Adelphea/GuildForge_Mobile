# Révision des Propositions 48 et 50 du Tableau III

Suite à votre retour, voici les révisions apportées aux propositions 48 et 50 pour maximiser leur pertinence et leur clarté.

## Proposition 48 (Révisée) : Centralisation des Données de Référence

| # | Type | Proposition Révisée | Fichier(s) Impacté(s) | Objectif | Détail de la Convention |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **48** | **Structure** | Créer un fichier **`REPERTOIRE_DONNEES_JEU.md`** dans `docs/PMD/verite_unique/` qui agrège les liens vers les **données de référence du jeu** (Glossaire, Custom Resources, Constantes Globales, Fichiers de Configuration). | `docs/PMD/verite_unique/REPERTOIRE_DONNEES_JEU.md` | **Point d'Accès Unique aux Données du Jeu :** Clarifier la distinction avec `CONTRIBUTING.md` (qui gère les conventions et principes de contribution). | Ce fichier ne contient pas les données elles-mêmes, mais sert de table des matières pour les données critiques du jeu. |

**Justification de la Révision :**
La distinction est cruciale :
*   **`CONTRIBUTING.md`** : Vérité unique des **Principes et Conventions de Travail**.
*   **`REPERTOIRE_DONNEES_JEU.md`** : Vérité unique des **Données et Constantes du Jeu** (ce qui est utilisé par le code).
Cette proposition est nécessaire pour éviter que les développeurs ne cherchent les constantes de jeu ou les définitions de CR dans la documentation textuelle.

## Proposition 50 (Révisée) : Amélioration des README de Pilier

| # | Type | Proposition Révisée | Fichier(s) Impacté(s) | Objectif | Détail de la Convention |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **50** | **Structure** | S'assurer que le `README.md` de chaque pilier (GDD, TDD, PMD) contient une **liste complète, ordonnée et annotée** (avec le statut du document) de tous les documents qu'il contient. **Action immédiate :** Ajouter les métadonnées `Statut: Brouillon` à tous les fichiers existants pour permettre l'application de cette règle. | `docs/GDD/README.md`, `docs/TDD/README.md`, `docs/PMD/README.md` et **tous les fichiers existants**. | **Navigation et Suivi d'Avancement :** Fournir un tableau de bord clair de l'état d'avancement de la documentation. | Le tableau doit inclure le titre, le lien, et le statut (Brouillon, Finalisé, etc.). L'ajout du statut initial permet de démarrer l'application de la règle. |

**Justification de la Révision :**
Vous avez raison, la règle ne peut être appliquée que si les documents ont un statut. L'action immédiate d'ajouter le statut `Brouillon` à tous les fichiers existants (en prévision de la Prop 36) permet de rendre la Prop 50 immédiatement applicable et utile pour le suivi.

---

**Les autres propositions (36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49) restent inchangées.**

Veuillez valider ces deux propositions révisées. Si elles sont validées, je procéderai à l'application de l'ensemble du Tableau III.
