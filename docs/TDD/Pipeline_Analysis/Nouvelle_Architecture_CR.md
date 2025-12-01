# Conception de la Nouvelle Architecture de Stockage des Custom Resources (CR)

**Auteur :** Manus AI
**Date :** 1er Décembre 2025
**Objectif :** Proposer une structure d'arborescence optimale pour les Custom Resources Godot (`.gd` et `.tres`) qui garantit l'intégrité fonctionnelle, la navigabilité, et le respect de la contrainte critique de **1000 fichiers maximum par dossier** imposée par GitHub.

## 1. Justification de la Refonte

L'analyse de la distribution des DefTypes a révélé que le type **ThingDef** contient **1227** définitions, dépassant la limite de 1000 fichiers par dossier. Une structure plate pour les instances `.tres` de ce type est donc inopérante. La nouvelle architecture proposée ci-dessous résout ce problème en introduisant une hiérarchie à deux niveaux pour les types de Defs volumineux.

## 2. Structure de Dossiers Proposée

Le dossier `GuildForge/` sera structuré en deux sous-dossiers principaux pour séparer les classes de ressources (code) des instances de ressources (données).

### 2.1. Classes de Ressources (`.gd`)

Les classes GDScript (`.gd`) définissent la structure des Custom Resources. Elles seront stockées dans un dossier unique par type de Def, car le nombre total de types de Defs est faible (environ 100).

**Chemin :** `GuildForge/scripts/resources/`

| Type de Fichier | Chemin Complet | Rôle |
| :--- | :--- | :--- |
| **Classes CR (`.gd`)** | `GuildForge/scripts/resources/<DefType>_defs/CR_<DefType>.gd` | Contient les classes `CR_ThingDef.gd`, `CR_HediffDef.gd`, etc. |
| **Classes CompProperties (`.gd`)** | `GuildForge/scripts/resources/comp_properties/CR_<CompClass>.gd` | Contient les classes pour les propriétés complexes (ex: `CR_CompProperties_Explosive.gd`). |
| **Classes de Base (`.gd`)** | `GuildForge/scripts/resources/base_classes/CR_Base.gd` | Classes abstraites pour l'héritage. |

### 2.2. Instances de Ressources (`.tres`)

Les instances de ressources (`.tres`) contiennent les données extraites des XML. Elles seront stockées dans une structure hiérarchique basée sur le **Module** (Core, Ideology, etc.) et le **DefType**.

**Chemin :** `GuildForge/data/resources/<Module>/`

| Type de Fichier | Chemin Complet | Logique de Stockage |
| :--- | :--- | :--- |
| **Instances CR (ThingDef)** | `GuildForge/data/resources/<Module>/thing_defs/<Première_Lettre>/<DefName>.tres` | **Hiérarchie à deux niveaux** pour les 1227 `ThingDef`. La sous-classification par la première lettre du `DefName` garantit que chaque sous-dossier contient moins de 1000 fichiers. |
| **Instances CR (Autres Types)** | `GuildForge/data/resources/<Module>/<DefType>_defs/<DefName>.tres` | **Structure plate** pour les types de Defs avec moins de 1000 instances (ex: `HediffDef`, `ThoughtDef`). |

## 3. Implémentation de la Logique de Hiérarchie

La logique de hiérarchie sera implémentée dans le pipeline (`xml_to_cr_pipeline.py`) pour déterminer le chemin de sortie de chaque instance `.tres`.

### 3.1. Logique de Détermination du Chemin

1.  **Déterminer le Module :** Extrait du chemin du fichier XML source (ex: `Core`, `Ideology`).
2.  **Déterminer le DefType :** Extrait du contenu XML (ex: `ThingDef`, `HediffDef`).
3.  **Déterminer le Dossier de Base :**
    *   Si `DefType` est `ThingDef` : le dossier de base est `thing_defs/`.
    *   Sinon : le dossier de base est `<DefType>_defs/`.
4.  **Déterminer la Sous-Catégorie (pour ThingDef uniquement) :**
    *   Si `DefType` est `ThingDef` : la sous-catégorie est la première lettre du `DefName` (ex: `W` pour `Wall`).
    *   Sinon : pas de sous-catégorie.

### 3.2. Exemple de Chemins

| DefName | DefType | Module | Chemin de Sortie (`.tres`) |
| :--- | :--- | :--- | :--- |
| `Wall` | `ThingDef` | `core` | `GuildForge/data/resources/core/thing_defs/w/Wall.tres` |
| `Apparel_FlakVest` | `ThingDef` | `core` | `GuildForge/data/resources/core/thing_defs/a/Apparel_FlakVest.tres` |
| `Gene_LongJump` | `GeneDef` | `biotech` | `GuildForge/data/resources/biotech/GeneDef_defs/Gene_LongJump.tres` |
| `JobDriver_LayDown` | `JobDef` | `core` | `GuildForge/data/resources/core/JobDef_defs/JobDriver_LayDown.tres` |

## 4. Conclusion

Cette nouvelle architecture résout le problème de la limite de 1000 fichiers tout en maintenant une organisation logique et fonctionnelle pour le système de Custom Resources de Godot.

**Prochaine Étape :** Implémenter cette structure dans le pipeline et régénérer les fichiers.

---
*Note : Le fichier `docs/TDD/Pipeline_Analysis/deftype_distribution.json` contient les données brutes justifiant cette analyse.*
