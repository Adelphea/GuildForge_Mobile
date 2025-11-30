# Analyse de la Fidélité du Pipeline aux Fonctionnalités XML d'Origine

## I. Contexte et Objectif

L'objectif de cette analyse est de vérifier si le pipeline actuel (XML -> Python/xmltodict -> .tres) est capable de gérer les fonctionnalités avancées des fichiers XML de type RimWorld, au-delà des Defs simples comme `BiomeDef`.

## II. Analyse des Fonctionnalités XML Manquantes

Le tableau ci-dessous compare les fonctionnalités clés des XML d'origine avec la couverture actuelle du pipeline.

| Fonctionnalité XML | Description | Couverture Actuelle | Volontaire ? | Justification / Proposition |
| :--- | :--- | :--- | :--- | :--- |
| **1. Héritage (`ParentName`)** | Une Def hérite des propriétés d'une autre Def via l'attribut `ParentName`. | **Non Couvert.** Le pipeline traite chaque Def de manière isolée. | **Non.** L'héritage est fondamental à l'architecture des données de RimWorld. | **Proposition 1 :** Le script Python doit implémenter un mécanisme de *résolution d'héritage* (fusion des propriétés parentales) avant la sérialisation. |
| **2. Références (`defName` -> `Resource`)** | Une Def fait référence à une autre Def par son `defName` (Ex: une recette fait référence à un ingrédient par son ID). | **Non Couvert.** Les références sont sérialisées comme de simples chaînes de caractères (`String`). | **Non.** La sécurité des types (Principe 8) est violée. Godot doit charger des `Resource` (CR) et non des `String`. | **Proposition 2 :** Le script Python doit identifier les champs de référence (ex: `ingrédientDef`) et sérialiser la référence en tant que chemin de ressource Godot (`ext_resource`). |
| **3. Attributs de Balise** | Les balises XML peuvent avoir des attributs (Ex: `<li Class="MyClass">`). | **Non Couvert.** `xmltodict` convertit les attributs en clés de dictionnaire préfixées par `@`. Le pipeline les ignore. | **Non.** Les attributs sont cruciaux pour la polymorphie (Ex: spécifier la classe GDScript d'un `CompProperties`). | **Proposition 3 :** Le pipeline doit extraire les attributs (notamment `@Class`) et les utiliser pour déterminer la classe GDScript exacte à instancier pour les `CompProperties`. |
| **4. Types Complexes Imbriqués** | Objets imbriqués (dictionnaires) ou listes d'objets complexes. | **Partiellement Couvert.** Le pipeline gère les listes simples de chaînes, mais pas les listes d'objets (Ex: `<li><statModifier>...</statModifier></li>`). | **Volontaire (Temporaire).** L'approche itérative prévoyait de les aborder dans les phases ultérieures. | **Proposition 4 :** Maintenir l'approche itérative, mais confirmer que les phases suivantes (ex: Phase 25 pour les personnages) devront implémenter la gestion des types complexes. |

## III. Proposition d'Amélioration du Pipeline (APD)

Pour garantir la fidélité et la sécurité des types, je propose d'intégrer les fonctionnalités 1, 2 et 3 au pipeline.

### Proposition 1 : Résolution d'Héritage (Modification du TDD-01)

Le TDD-01 doit être mis à jour pour inclure la règle suivante :

> **Règle Pipelining 1.1 : Résolution d'Héritage**
> Le script de conversion Python doit implémenter un mécanisme de résolution d'héritage. Si une Def possède un attribut `ParentName`, le script doit charger les propriétés de la Def parente correspondante et les fusionner avec les propriétés de la Def enfant, en donnant la priorité aux propriétés de l'enfant.

### Proposition 2 : Sérialisation des Références (Modification du Pipeline)

Le script Python doit être étendu pour :
1.  Identifier les balises qui représentent des références à d'autres Defs (ex: `ingrédientDef`, `thingDef`).
2.  Sérialiser ces références dans le format Godot `ext_resource` (ou un format intermédiaire qui sera résolu par le `DefManager`).

### Proposition 3 : Gestion des Attributs de Classe (Modification du Pipeline)

Le script Python doit être étendu pour :
1.  Rechercher l'attribut `@Class` dans les balises XML complexes (notamment celles qui définissent des `CompProperties`).
2.  Utiliser la valeur de cet attribut pour déterminer la classe GDScript spécifique à instancier pour le `CompProperties` correspondant.

## IV. Soumission à Validation

L'implémentation de ces propositions est essentielle pour la réussite du chantier CR/XML.

**Validation Requise :**
Veuillez valider cette analyse et les trois propositions d'amélioration du pipeline.

**Votre réponse doit être :**
*   **"Je valide l'analyse et les propositions."** pour que j'intègre ces fonctionnalités au pipeline.
*   **"Je demande une modification : [détails]"** pour réviser les propositions.
*   **"Je refuse l'analyse."** pour mettre fin au cycle.
