# Conception de la Nouvelle Architecture de Stockage des Custom Resources (CR) - V2

**Auteur :** Manus AI
**Date :** 1er Décembre 2025
**Objectif :** Proposer une structure d'arborescence optimale pour les Custom Resources Godot (`.gd` et `.tres`) qui garantit l'intégrité fonctionnelle, la navigabilité, et le respect de la contrainte critique de **1000 fichiers maximum par dossier** imposée par GitHub, en utilisant une clé de tri fonctionnelle.

## 1. Justification de la Refonte

L'analyse de la distribution des DefTypes a confirmé que **ThingDef** est le seul type dépassant la limite de 1000 instances (1227 Defs). Les propositions précédentes de tri par Module et par première lettre ont été rejetées.

La nouvelle analyse des 1227 ThingDef par leur chemin de fichier source a révélé une distribution naturelle et fonctionnelle :

| Catégorie de Fichier Source | Nombre de ThingDef | Statut (Limite 1000) |
| :--- | :--- | :--- |
| `ThingDefs_Misc` | 519 | Sûr |
| `ThingDefs_Buildings` | 397 | Sûr |
| `ThingDefs_Items` | 147 | Sûr |
| `ThingDefs_Races` | 90 | Sûr |
| `ThingDefs_Plants` | 74 | Sûr |
| **Total** | **1227** | |

Cette **Catégorie de Fichier Source** (ex: `ThingDefs_Buildings`) sera la nouvelle clé de tri pour les instances de `ThingDef`.

## 2. Structure de Dossiers Proposée

Le dossier `GuildForge/` sera structuré comme suit :

### 2.1. Classes de Ressources (`.gd`)

Les classes GDScript (`.gd`) définissent la structure des Custom Resources.

**Chemin :** `GuildForge/scripts/resources/`

| Type de Fichier | Chemin Complet | Rôle |
| :--- | :--- | :--- |
| **Classes CR (`.gd`)** | `GuildForge/scripts/resources/<DefType>_defs/CR_<DefType>.gd` | Contient les classes `CR_ThingDef.gd`, `CR_HediffDef.gd`, etc. |
| **Classes CompProperties (`.gd`)** | `GuildForge/scripts/resources/comp_properties/CR_<CompClass>.gd` | Contient les classes pour les propriétés complexes. |
| **Classes de Base (`.gd`)** | `GuildForge/scripts/resources/base_classes/CR_Base.gd` | Classes abstraites pour l'héritage. |

### 2.2. Instances de Ressources (`.tres`)

Les instances de ressources (`.tres`) contiennent les données extraites des XML. Le tri par Module est abandonné pour une structure plus simple et plus directe.

**Chemin de Base :** `GuildForge/data/resources/`

| Type de Fichier | Chemin Complet | Logique de Stockage |
| :--- | :--- | :--- |
| **Instances CR (ThingDef)** | `GuildForge/data/resources/thing_defs/<Catégorie_Source>/<DefName>.tres` | **Hiérarchie à deux niveaux** basée sur la catégorie de fichier source (ex: `ThingDefs_Buildings`). Chaque sous-dossier contient moins de 1000 fichiers. |
| **Instances CR (Autres Types)** | `GuildForge/data/resources/<DefType>_defs/<DefName>.tres` | **Structure plate** par `DefType` (moins de 1000 instances). |

## 3. Implémentation de la Logique de Hiérarchie

La logique de hiérarchie sera implémentée dans le pipeline (`xml_to_cr_pipeline.py`).

### 3.1. Logique de Détermination du Chemin

1.  **Déterminer le DefType :** Extrait du contenu XML (ex: `ThingDef`).
2.  **Déterminer le Dossier de Base :**
    *   Si `DefType` est `ThingDef` : le dossier de base est `thing_defs/`.
    *   Sinon : le dossier de base est `<DefType>_defs/`.
3.  **Déterminer la Sous-Catégorie (pour ThingDef uniquement) :**
    *   Si `DefType` est `ThingDef` : la sous-catégorie est la **Catégorie de Fichier Source** (ex: `ThingDefs_Buildings`).
    *   Sinon : pas de sous-catégorie.

### 3.2. Exemple de Chemins

| DefName | DefType | Catégorie Source | Chemin de Sortie (`.tres`) |
| :--- | :--- | :--- | :--- |
| `Wall` | `ThingDef` | `ThingDefs_Buildings` | `GuildForge/data/resources/thing_defs/ThingDefs_Buildings/Wall.tres` |
| `Apparel_FlakVest` | `ThingDef` | `ThingDefs_Items` | `GuildForge/data/resources/thing_defs/ThingDefs_Items/Apparel_FlakVest.tres` |
| `Gene_LongJump` | `GeneDef` | N/A | `GuildForge/data/resources/GeneDef_defs/Gene_LongJump.tres` |
| `JobDriver_LayDown` | `JobDef` | N/A | `GuildForge/data/resources/JobDef_defs/JobDriver_LayDown.tres` |

## 4. Conclusion

Cette architecture est la plus robuste car elle utilise une classification intrinsèque aux données (la catégorie de jeu) pour résoudre le problème de la limite de 1000 fichiers, tout en simplifiant la structure en éliminant le tri par Module.

**Prochaine Étape :** Implémenter cette structure dans le pipeline et régénérer les fichiers.
