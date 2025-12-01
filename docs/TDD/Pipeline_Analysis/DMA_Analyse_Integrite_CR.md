---
statut: Brouillon
version: 1.0
auteur: Manus AI
date: 2025-12-01
tags: [méthodologie, pipeline, CR, XML, intégrité, validation]
---

# Document de Méthodologie d'Analyse (DMA) - Intégrité de la Pipeline XML -> CR

## I. Objectif de l'Analyse

L'objectif de cette analyse est de vérifier et de garantir que les Custom Resources (CR) générées par la pipeline sont une **représentation intégrale et parfaite** des données contenues dans les fichiers XML originaux de RimWorld, conformément à l'exigence de l'utilisateur.

L'analyse doit confirmer que :
1.  **Intégrité Structurelle :** Toutes les balises XML ont été mappées à des propriétés de CR correspondantes.
2.  **Intégrité des Données :** Les valeurs des propriétés ont été correctement converties (typage, références inter-Def).
3.  **Intégrité Fonctionnelle :** Les mécanismes complexes (héritage, CompProperties) ont été résolus correctement.

## II. Critères de "Représentativité Intégrale et Parfaite"

Une CR est considérée comme une représentation intégrale et parfaite si :
*   **Schéma Complet :** Chaque balise XML présente dans le fichier source est représentée par une propriété dans la classe GDScript (`.gd`) correspondante.
*   **Valeurs Exactes :** La valeur de chaque propriété dans l'instance `.tres` est identique à la valeur XML, après application des règles de conversion de type (P7 : Vector, Color, etc.).
*   **Résolution des Références :** Toutes les références inter-Def (`defName`) sont correctement converties en références Godot (`ExtResource(...)`).
*   **Héritage Résolu :** Les données héritées des Defs abstraits (`@Abstract="True"`) sont correctement fusionnées dans les Defs enfants.

## III. Fichiers Sources et Cibles de l'Analyse

| Catégorie | Fichiers Sources | Fichiers Cibles |
| :--- | :--- | :--- |
| **XML Sources** | Tous les fichiers `.xml` dans `data/rimworld_data/Core/Defs/...` | N/A |
| **Classes CR** | N/A | Tous les fichiers `.gd` dans `GuildForge/scripts/resources/...` |
| **Instances CR** | N/A | Tous les fichiers `.tres` dans `GuildForge/data/resources/...` |

## IV. Procédure de Test (Méthodologie)

L'analyse sera menée en deux étapes principales : **Analyse de Schéma** et **Analyse de Données**.

### IV.1. Étape 1 : Analyse de Schéma (Classes GDScript)

**Objectif :** Vérifier que les classes GDScript (`.gd`) générées contiennent toutes les propriétés nécessaires pour accueillir les données XML.

**Procédure :**
1.  **Extraction du Schéma XML :** Développer un script pour parcourir tous les XML et collecter l'ensemble unique de toutes les balises utilisées pour chaque `DefType` (ex: `ThingDef`, `BiomeDef`).
2.  **Extraction du Schéma CR :** Développer un script pour lire les fichiers `.gd` et extraire les propriétés `@export var` déclarées pour chaque classe CR.
3.  **Comparaison :** Comparer le Schéma XML (balises uniques) avec le Schéma CR (propriétés déclarées).
4.  **Résultat Attendu :** Pour chaque `DefType`, l'ensemble des propriétés CR doit être un sur-ensemble (ou égal) de l'ensemble des balises XML, en tenant compte des balises ignorées par la pipeline (ex: `PatchOperation_...`).

### IV.2. Étape 2 : Analyse de Données (Instances `.tres`)

**Objectif :** Vérifier que les données des instances `.tres` sont exactes et que les mécanismes complexes ont été résolus.

**Procédure :**
1.  **Sélection d'Échantillons Critiques :** Sélectionner manuellement un échantillon de 10 Defs critiques pour une analyse approfondie, incluant :
    *   Un Def avec **Héritage** (`ParentName`).
    *   Un Def avec des **CompProperties** complexes.
    *   Un Def avec des **Références Inter-Def** (ex: une arme qui référence un projectile).
    *   Un Def contenant des types de données brutes (Vector, Color).
2.  **Extraction des Données :**
    *   **XML :** Charger le XML source de l'échantillon et le parser en dictionnaire Python (après résolution de l'héritage).
    *   **CR :** Développer un script pour lire le fichier `.tres` et extraire les valeurs des propriétés.
3.  **Comparaison des Valeurs :** Comparer les valeurs du dictionnaire XML résolu avec les valeurs extraites du `.tres`.
4.  **Résultat Attendu :** Les valeurs doivent correspondre exactement, après conversion de type.

## V. Livrable de la Phase d'Analyse

Le livrable sera le **Rapport d'Analyse et Identification des Lacunes** (Phase 20), qui présentera :
*   Le Schéma XML vs Schéma CR (Analyse de Schéma).
*   Le détail de la comparaison des 10 échantillons critiques (Analyse de Données).
*   La liste des lacunes majeures et les solutions proposées.

---
*Ce document est un brouillon de la méthodologie et est soumis à validation explicite de l'utilisateur.*
