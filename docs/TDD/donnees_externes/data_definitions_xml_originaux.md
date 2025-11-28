---
Statut: À Jour
---

# Analyse et Utilité des Données XML d'Origine de RimWorld

**Auteur :** Manus IA
**Date :** 28 Novembre 2025
**Version :** 2.0 (Mise à jour suite à l'intégration des données XML brutes)
**Tags :** [données, RimWorld, XML, Custom_Resources, Godot, migration]

## 1. Contexte et Intégration des Données XML

Suite à l'intégration des 1942 fichiers XML d'origine de RimWorld, la stratégie de gestion des données du projet est confirmée et affinée. Ces fichiers XML constituent désormais la **source de vérité** pour la définition des propriétés de jeu.

| Source de Données | Rôle | Statut |
| :--- | :--- | :--- |
| **Fichiers XML (1942)** | Définition exhaustive des propriétés de jeu (`statBases`, `graphicData`, `CompProperties`, etc.) et de la hiérarchie d'héritage. | **Source de Vérité** |
| **Fichiers JSON (Terminologie)** | Index des DefTypes. | **Obsolète** (Remplacé par l'analyse des XML) |
| **Fichiers Markdown/YAML** | Format de travail pour la documentation et l'édition humaine des définitions. | **Format de Documentation** |
| **Fichiers `.res` binaires** | Format final pour le jeu Godot. | **Format de Production** |

## 2. Validation de la Stratégie Hybride (Fidélité + Ergonomie)

L'analyse des XML confirme que la stratégie de mapping 1:1 (199 classes GDScript) est incompatible avec les meilleures pratiques de Godot. La structure XML révèle une dépendance massive à la **composition**, ce qui valide la nécessité d'une **Structure Hybride** pour le projet.

### 2.1. Incompatibilité du Mapping 1:1

Le plan initial de créer une classe GDScript pour chaque DefType (ex: `CR_Building_DoorDef.gd`) est rejeté pour les raisons suivantes, confirmées par l'analyse des XML :

*   **Héritage Complexe :** La profondeur de l'héritage C# est trop rigide pour être reproduite fidèlement en GDScript sans créer un code lourd et difficile à maintenir.
*   **Composition (CompProperties) :** L'utilisation de balises comme `<li Class="CompProperties_AffectedByFacilities">` prouve que RimWorld utilise la composition pour ajouter des fonctionnalités. Godot doit adopter cette approche.

### 2.2. La Structure Hybride Adoptée

La nouvelle structure combine la fidélité à la logique RimWorld avec l'ergonomie de Godot :

| Élément RimWorld (XML) | Rôle Fonctionnel | Mapping Godot (Hybride) |
| :--- | :--- | :--- |
| **`<ThingDef ParentName="BuildingBase">`** | Hiérarchie de base. | **Classes GDScript de Base** (ex: `CR_Base.gd`, `CR_ThingDef.gd`). |
| **`<li Class="CompProperties_...">`** | Ajout de fonctionnalités (Composants). | **Custom Resources Imbriquées** (ex: `CompProperties_AffectedByFacilities.tres`). |
| **`<defName>...</defName>`** | Identifiant unique. | **Propriété `def_name`** dans la Resource. |
| **Propriétés Spécifiques** | Données de jeu (stats, graphiques, etc.). | **Propriétés `@export`** dans les classes GDScript Hybrides. |

## 3. Mise à Jour de la Documentation TDD

Les documents TDD existants doivent être mis à jour pour refléter cette stratégie validée.

### 3.1. Mise à Jour de `conception_axee_donnees.md`

Le document doit être mis à jour pour :
1.  **Remplacer** la notion de "schémas XML" par l'analyse directe des "fichiers XML bruts".
2.  **Intégrer** la validation de la stratégie Hybride (Classes de Base + Composition).
3.  **Souligner** que la migration n'est pas une simple conversion, mais une **structuration** des données XML brutes dans le modèle Hybride Godot.

### 3.2. Mise à Jour de `gestion_donnees_godot.md`

Le document doit être mis à jour pour :
1.  **Clarifier** que la classe de base `DefBase.gd` sera renommée en `CR_Base.gd` (ou similaire) pour refléter l'utilisation de Custom Resources.
2.  **Ajouter** une section sur les **CompProperties** et leur mapping direct vers des `Resource` Godot dédiées.
3.  **Préciser** que la stratégie de migration implique une **extraction des propriétés** des 1942 XML pour construire les modèles GDScript Hybrides.

## 4. Prochaines Étapes (Phase 183 et 184)

La prochaine étape immédiate est l'exécution de la Phase 183 révisée :

1.  **Extraction des Métadonnées :** Développer un script pour parcourir les 1942 XML et générer un fichier de métadonnées complet (JSON ou autre) listant pour chaque DefType :
    *   Son parent (`ParentName`).
    *   La liste de toutes ses propriétés directes.
    *   La liste de tous ses `CompProperties` requis.
2.  **Phase 184 :** Utiliser ces métadonnées pour concevoir et rédiger les modèles GDScript Hybrides.

---
[1]: /home/ubuntu/rimworld_xml_data/Data/Core/Defs/ThingDefs_Buildings/Buildings_Production.xml "Exemple de ThingDef XML"
[2]: /home/ubuntu/rimworld_xml_data/Data/Core/Defs/BiomeDefs/Biomes_Temperate.xml "Exemple de BiomeDef XML"
[3]: /home/ubuntu/GuildForge_Mobile/docs/TDD/architecture_code/gestion_donnees_godot.md "Gestion des Données et Stratégie de Migration pour GuildForge Mobile"
[4]: /home/ubuntu/GuildForge_Mobile/docs/TDD/architecture_code/conception_axee_donnees.md "Conception Axée sur les Données - GuildForge"
