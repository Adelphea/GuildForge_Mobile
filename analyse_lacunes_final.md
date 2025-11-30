# Analyse Finale des Lacunes du Pipeline XML -> CR

## I. Contexte et Objectif

Cette analyse finale intègre les spécifications des systèmes de jeu (TDD-02 et TDD-04) pour garantir que le pipeline de données est non seulement fidèle aux XML d'origine, mais surtout **fonctionnel** pour l'architecture Godot du projet.

## II. Récapitulatif des Lacunes Critiques (5 Propositions)

Les cinq propositions identifiées sont **indispensables** car elles sont directement liées aux exigences du TDD-01 (Architecture de Données) et du TDD-02 (ECS/Composition).

| # | Proposition | Justification TDD | Indispensabilité |
| :--- | :--- | :--- | :--- |
| **P1** | **Résolution d'Héritage** | Nécessaire pour l'intégrité des Defs complexes (Ex: `ThingDef`). | **Fonctionnalité / Performance** |
| **P2** | **Sérialisation des Références** | Nécessaire pour le **Typage Statique** (Principe 8) et l'optimisation du chargement par le `DefManager` (TDD-01, III.1). | **Sécurité des Types / Performance** |
| **P3** | **Gestion des Attributs (`@Class`)** | Nécessaire pour implémenter la **Composition over Inheritance** (TDD-01, Règle 15) et la polymorphie des `CompProperties`. | **Conformité TDD-01** |
| **P4** | **Gestion Récursive des Types Complexes** | Nécessaire pour convertir les listes d'objets (Ex: `statBases` dans `ThingDef`) qui sont la base des `CompProperties`. | **Fonctionnalité** |
| **P5** | **Pré-traitement des Opérations XML** | Nécessaire pour la **Maintenabilité** et la **Fidélité** aux données source (gestion des patches). | **Maintenabilité / Fidélité** |

## III. Recherche de Lacunes Supplémentaires (Analyse TDD-02 et TDD-04)

L'analyse des TDD-02 et TDD-04 révèle une exigence critique non couverte par le pipeline actuel :

### Lacune 6 : Dépendance au `class_name` GDScript

| Problème | Indispensabilité | Justification |
| :--- | :--- | :--- |
| **Le pipeline Python n'a pas de connaissance explicite du `class_name` GDScript.** Pour que la sérialisation en `.tres` fonctionne, le fichier `.tres` doit contenir la ligne `[ext_resource path="res://scripts/resources/CR_ThingDef.gd" type="Script" id="1"]` et la ligne `[resource type="CR_ThingDef" load_steps=2 format=2]`. | **Indispensable (Sérialisation Godot)** | Le script Python doit pouvoir déterminer le chemin relatif du script GDScript correspondant à la Def en cours de conversion. |
| **Solution :** Le pipeline Python doit maintenir un **Mapping** entre le `defName` XML et le chemin du script GDScript (`CR_ThingDef.gd`). Ce mapping doit être basé sur une convention de nommage stricte (Ex: `ThingDef` -> `CR_ThingDef.gd`). | **Conformité :** Nécessaire pour la sérialisation native Godot. |

## IV. Propositions Finales et Plan de Travail Révisé

Pour garantir un pipeline **intégralement fonctionnel**, j'ajoute la **Proposition 6** (Mapping GDScript) et je réorganise le plan pour inclure la mise à jour du TDD-01 avant l'implémentation du `DefManager`.

| Phase | Description |
| :--- | :--- |
| **Phase 23** | **Implémentation de la Résolution d'Héritage XML** (P1). |
| **Phase 24** | **Implémentation de la Sérialisation des Références Inter-Defs** (P2). |
| **Phase 25** | **Implémentation de la Gestion des Attributs de Balise (`@Class`)** (P3). |
| **Phase 26** | **Implémentation de la Gestion Récursive des Types Complexes** (P4). |
| **Phase 27** | **Implémentation du Pré-traitement des Opérations XML (Patches)** (P5). |
| **Phase 28 (Nouveau)** | **Implémentation du Mapping `defName` -> `class_name` GDScript** (P6). |
| **Phase 29 (Nouveau)** | **Mise à jour du TDD-01** pour documenter les six nouvelles fonctionnalités du pipeline. |
| **Phase 30 (Ancienne 27)** | **Exécuter la Phase 18 : Implémentation du DefManager (Chargement Asynchrone).** |

**Validation Requise :**
Veuillez valider cette analyse finale et le nouveau plan de travail.

**Votre réponse doit être :**
*   **"Je valide l'analyse et le nouveau plan."** pour que je commence l'implémentation de la Phase 23.
*   **"Je demande une modification : [détails]"** pour réviser le plan.
*   **"Je refuse l'analyse."** pour mettre fin au cycle.
