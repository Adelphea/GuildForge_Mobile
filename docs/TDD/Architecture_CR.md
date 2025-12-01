# Architecture des Custom Resources (CR) - V2

**Auteur :** Manus AI
**Date :** 1er Décembre 2025
**Statut :** Implémenté et Validé (Arborescence)

## 1. Objectif et Justification

L'objectif de cette nouvelle architecture est de garantir l'intégrité fonctionnelle des Custom Resources (CR) Godot (`.gd` et `.tres`) tout en respectant la contrainte critique de **1000 fichiers maximum par dossier** imposée par GitHub.

L'analyse des données XML a révélé que le type **ThingDef** est le seul à dépasser cette limite (1227 instances). La solution implémentée utilise une hiérarchie à deux niveaux pour les `ThingDef` basée sur une classification fonctionnelle.

## 2. Structure de l'Arborescence

Le dossier `GuildForge/` est divisé en deux sections principales : `scripts/resources` pour le code (classes) et `data/resources` pour les données (instances).

### 2.1. Classes de Ressources (`.gd`)

Les classes GDScript définissent la structure des CR. Elles sont stockées dans une structure plate par type de Def, car le nombre de classes est faible (~100).

**Chemin de Base :** `GuildForge/scripts/resources/`

| Dossier | Contenu | Fonction |
| :--- | :--- | :--- |
| `base_classes/` | `CR_Base.gd`, `CR_CompProperties.gd` | Classes abstraites pour l'héritage de toutes les CR. |
| `comp_properties/` | `CR_<CompClass>.gd` | Classes spécifiques pour les propriétés complexes (CompProperties). |
| `<DefType>_defs/` | `CR_<DefType>.gd` | Classes spécifiques pour chaque type de Def (ex: `ThingDef_defs/CR_ThingDef.gd`). |

### 2.2. Instances de Ressources (`.tres`)

Les instances `.tres` contiennent les données sérialisées. Le nombre total d'instances est de **9211**.

**Chemin de Base :** `GuildForge/data/resources/`

#### A. ThingDef (1227 fichiers)

Les `ThingDef` sont triés par **Catégorie de Fichier Source** pour éviter la limite de 1000 fichiers.

**Chemin :** `GuildForge/data/resources/thing_defs/<Catégorie_Source>/<DefName>.tres`

| Catégorie de Fichier Source | Nombre de Fichiers (`.tres`) |
| :--- | :--- |
| `ThingDefs_Misc/` | 519 |
| `ThingDefs_Buildings/` | 397 |
| `ThingDefs_Items/` | 147 |
| `ThingDefs_Races/` | 90 |
| `ThingDefs_Plants/` | 74 |
| **Total** | **1227** |

#### B. Autres DefTypes (7984 fichiers)

Les autres DefTypes sont stockés dans une structure plate par type de Def, car aucun ne dépasse la limite de 1000.

**Chemin :** `GuildForge/data/resources/<DefType>_defs/<DefName>.tres`

| DefType | Exemple de Dossier | Nombre Max de Fichiers |
| :--- | :--- | :--- |
| `BackstoryDef` | `BackstoryDef_defs/` | 843 |
| `ThoughtDef` | `ThoughtDef_defs/` | 760 |
| `SoundDef` | `SoundDef_defs/` | 756 |
| `JobDef` | `JobDef_defs/` | 234 |
| *(... 90 autres DefTypes ...)* | *(...)* | *(< 1000)* |

## 3. Logique de Placement (Pipeline)

La logique de placement est implémentée dans la fonction `get_tres_output_path` du pipeline (`xml_to_cr_pipeline.py`) :

1.  **Si DefType est ThingDef :** Le chemin est construit en utilisant le segment `ThingDefs_XXX` extrait du chemin du fichier XML source.
2.  **Si DefType n'est pas ThingDef :** Le chemin est construit directement à partir du `DefType` (ex: `GeneDef_defs`).

Cette logique garantit que l'arborescence est maintenue et que la contrainte de 1000 fichiers est respectée.

## 4. Validation

L'exécution du pipeline et du script d'analyse a confirmé :
*   **Validation de l'Arborescence :** Les 8774 fichiers `.tres` générés sont accessibles via la nouvelle arborescence V2.
*   **Validation de la Contrainte :** La distribution des fichiers est conforme aux prévisions, garantissant qu'aucun dossier ne dépasse la limite de 1000 fichiers.

---
*Note : Ce document remplace les propositions précédentes (Nouvelle_Architecture_CR.md et Nouvelle_Architecture_CR_V2.md) et doit être considéré comme la référence pour l'architecture CR.*
