# Analyse des Lacunes Supplémentaires du Pipeline XML -> CR

## I. Contexte et Objectif

Suite à la validation des trois propositions initiales (Héritage, Références, Attributs), cette analyse vise à identifier d'autres lacunes critiques dans le pipeline actuel qui pourraient compromettre la fidélité ou la fonctionnalité du jeu mobile sous Godot.

## II. Identification des Lacunes Critiques

L'analyse des XML de RimWorld et des spécifications du TDD-01 révèle deux domaines majeurs non encore couverts :

### Lacune 1 : Gestion des Types Complexes Imbriqués (Listes et Dictionnaires)

| Problème | Indispensabilité | Justification |
| :--- | :--- | :--- |
| **Le pipeline ne gère que les types simples (String, Int, Float) et les listes de Strings.** Il ne gère pas les structures complexes comme les listes d'objets imbriqués (Ex: `<li><statModifier>...</statModifier></li>`) ou les dictionnaires (Ex: `key/value`). | **Indispensable (Fonctionnalité)** | Les Defs complexes (Ex: `ThingDef`) contiennent de nombreuses listes d'objets (Ex: `statBases`, `comps`, `recipes`). Sans gestion de ces structures, la majorité des données de jeu ne peuvent pas être converties. |
| **Solution :** Le script Python doit implémenter une logique récursive pour parcourir les structures imbriquées et les mapper aux classes `CR_CompProperties` ou à des `Dictionary` / `Array` typés en GDScript. | **Conformité :** Nécessaire pour implémenter la **Composition over Inheritance** (TDD-01, Règle 15). |

### Lacune 2 : Gestion des Opérations XML (Patches et Suppression)

| Problème | Indispensabilité | Justification |
| :--- | :--- | :--- |
| **Le pipeline traite uniquement l'ajout de nouvelles Defs.** Il ignore les opérations XML avancées comme les `PatchOperation` (modification de Defs existantes) ou les balises de suppression (Ex: `<li Class="PatchOperationRemove">`). | **Indispensable (Maintenabilité/Modding)** | Bien que le projet ne supporte pas le modding au lancement, la capacité à gérer les patches est essentielle pour la **maintenance interne** (Ex: modifier une Def de base sans la copier intégralement) et pour la **fidélité** à la philosophie des données source. |
| **Solution :** Le script Python doit implémenter une étape de pré-traitement qui applique toutes les opérations de patch sur les Defs avant la sérialisation. | **Conformité :** Assure la **fidélité** aux données source et prépare le terrain pour la **Rétro-Compatibilité** (TDD-01, IV.2). |

## III. Propositions d'Amélioration (Finales)

Pour garantir un pipeline **intégralement fonctionnel** et **robuste**, j'ajoute deux propositions aux trois précédentes.

| # | Proposition | Description |
| :--- | :--- | :--- |
| **P1** | **Résolution d'Héritage** | (Déjà proposée) Implémenter la fusion des propriétés parentales. |
| **P2** | **Sérialisation des Références** | (Déjà proposée) Sérialiser les références en `ext_resource`. |
| **P3** | **Gestion des Attributs** | (Déjà proposée) Utiliser `@Class` pour la polymorphie. |
| **P4 (Nouveau)** | **Gestion Récursive des Types Complexes** | Implémenter une logique récursive dans le pipeline Python pour mapper les listes et dictionnaires imbriqués aux structures GDScript typées. |
| **P5 (Nouveau)** | **Pré-traitement des Opérations XML** | Implémenter un mécanisme de pré-traitement pour appliquer les opérations de patch et de suppression XML avant la conversion finale. |

## IV. Propositions Révisées et Nouveau Plan de Travail

Pour intégrer ces cinq fonctionnalités critiques, le plan de travail est ajusté.

| Phase | Description |
| :--- | :--- |
| **Phase 23** | **Implémentation de la Résolution d'Héritage XML** (P1). |
| **Phase 24** | **Implémentation de la Sérialisation des Références Inter-Defs** (P2). |
| **Phase 25** | **Implémentation de la Gestion des Attributs de Balise (`@Class`)** (P3). |
| **Phase 26** | **Implémentation de la Gestion Récursive des Types Complexes** (P4). |
| **Phase 27** | **Implémentation du Pré-traitement des Opérations XML (Patches)** (P5). |
| **Phase 28** | **Mise à jour du TDD-01** pour documenter les cinq nouvelles fonctionnalités du pipeline. |
| **Phase 29** | **Exécuter la Phase 18 : Implémentation du DefManager (Chargement Asynchrone).** |

**Validation Requise :**
Veuillez valider cette analyse finale et le nouveau plan de travail.

**Votre réponse doit être :**
*   **"Je valide l'analyse et le nouveau plan."** pour que je commence l'implémentation de la Phase 23.
*   **"Je demande une modification : [détails]"** pour réviser le plan.
*   **"Je refuse l'analyse."** pour mettre fin au cycle.
