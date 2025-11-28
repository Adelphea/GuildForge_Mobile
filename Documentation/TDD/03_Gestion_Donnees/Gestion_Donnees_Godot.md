# Gestion des Données et Stratégie de Migration pour GuildForge Mobile

**Auteur :** Adelphea ; Manus IA
**Date :** 18 Octobre 2025
**Version :** 1
**Tags :** [documentation, godot, data_management, migration, xml, custom_resources]

Ce document consolide les informations relatives à la gestion des données dans le projet GuildForge Mobile, en détaillant la standardisation autour des Resources de Godot et la stratégie de migration depuis les définitions XML héritées. Il vise à fournir une source unique de vérité sur la structure des données, les conventions et le processus de transition.

---

## 1. Introduction : Évolution de la Gestion des Données

Le projet GuildForge Mobile s'éloigne progressivement des fichiers XML originaux de RimWorld, qui servent désormais de **sources d'inspiration et de référence conceptuelle**, pour s'orienter vers une approche native et optimisée pour Godot Engine 4.5. L'objectif est de privilégier l'utilisation des `Resources` (Ressources Personnalisées) de Godot, qui offrent une intégration supérieure, une meilleure performance et une maintenabilité accrue. Les fichiers XML sont utilisés pour créer manuellement des `Custom Resources` en s'inspirant de leur structure, mais ne sont **pas destinés à être migrés directement** dans leur format original.

## 2. Standardisation des Données avec les Resources de Godot

### 2.1. Pourquoi les Resources de Godot ?

Les `Resources` de Godot sont des objets héritant de la classe `Resource` qui peuvent être sérialisés et sauvegardés sous forme de fichiers `.tres` ou `.res`. Elles présentent plusieurs avantages majeurs pour la gestion des données de jeu :

*   **Intégration Native :** Directement reconnues et gérées par l'éditeur Godot, permettant une édition visuelle et une auto-complétion.
*   **Typage Fort :** Les propriétés des `Resources` peuvent être typées, ce qui réduit les erreurs de programmation et augmente la robustesse du code.
*   **Réutilisabilité :** Une fois définies, les `Resources` peuvent être instanciées et réutilisées à travers différentes scènes ou objets du jeu.
*   **Performance :** Godot gère l'accès et le chargement de ces ressources de manière optimisée.
*   **Maintenabilité :** La structure des données est claire et bien définie, facilitant la compréhension et la modification par les développeurs.

### 2.2. Convention de Nommage : "Defs" comme Custom Resources

Pour maintenir une familiarité avec la terminologie de RimWorld tout en utilisant les outils natifs de Godot, nous adoptons la convention suivante :

*   **Suffixe "Def" :** Toutes les `Custom Resources` servant de définitions de jeu (objets, traits, bâtiments, etc.) utiliseront le suffixe `Def` dans leur nom de classe et de fichier. Par exemple, `ItemDef.gd` pour la définition d'un objet.
*   **Classe de Base `DefBase` :** Toutes les définitions (`...Def`) hériteront d'une classe de base commune nommée `DefBase`. Cette classe contiendra les propriétés partagées par toutes les définitions, comme `defName`, `label`, et `description`.

Cette approche permet de différencier clairement les définitions de jeu (`...Def`) des autres `Custom Resources` qui pourraient être créées pour d'autres usages, tout en conservant une terminologie cohérente et inspirée de RimWorld.

### 2.3. Structure Générale des Resources

#### 2.3.1. Classe de Base `DefBase.gd`

```gdscript
# res://guildforge/scripts/definitions/DefBase.gd
class_name DefBase extends Resource

@export var defName: String = "" # Nom unique utilisé comme identifiant
@export var label: String = ""     # Nom affiché dans le jeu
@export var description: String = "" # Description détaillée
```

#### 2.3.2. Exemple de `ItemDef.gd`

```gdscript
# res://guildforge/scripts/definitions/ItemDef.gd
class_name ItemDef extends DefBase

enum ItemType { WEAPON, ARMOR, CONSUMABLE, MATERIAL, MISC }

@export var item_type: ItemType = ItemType.MISC
@export var stack_size: int = 1
@export var base_value: float = 0.0
@export var weight: float = 0.0
@export var tags: Array[String] = []
```

Chaque instance de `ItemDef` sera ensuite sauvegardée comme un fichier `.tres` (par exemple, `item_sword.tres`) dans un dossier dédié (`res://guildforge/resources/definitions/items/`).

### 2.4. Organisation des Fichiers de Définition

Pour maintenir une structure claire et facile à naviguer, les `Resources` seront organisées dans le dossier `guildforge/resources/definitions/`.

```
guildforge/
├── resources/
│   ├── definitions/
│   │   ├── items/
│   │   │   ├── item_sword.tres
│   │   │   └── ...
│   │   ├── buildings/
│   │   │   └── ...
│   │   └── ...
└── scripts/
    └── definitions/
        ├── DefBase.gd
        ├── ItemDef.gd
        └── ...
```

### 2.5. Intégration des Scripts de Définition dans Godot

Pour que les classes `DefBase`, `ItemDef`, etc., soient reconnues comme des `Custom Resources` dans l'éditeur Godot et puissent être instanciées sous forme de fichiers `.tres`, les étapes suivantes sont nécessaires :

1.  **Emplacement des Scripts :** Les scripts de définition (`DefBase.gd`, `ItemDef.gd`, etc.) doivent être placés dans le dossier `res://guildforge/scripts/definitions/`.
2.  **Déclaration `class_name` :** Chaque script de définition doit utiliser la déclaration `class_name` (par exemple, `class_name DefBase extends Resource`) pour enregistrer la classe comme un type global dans Godot. Cela permet de l'utiliser directement dans le code et l'éditeur.
3.  **Création d'Instances `.tres` :**
    *   **Via l'éditeur :** Dans le panneau `FileSystem` de Godot, faites un clic droit dans le dossier `res://guildforge/resources/definitions/` (ou un sous-dossier spécifique comme `items/`), sélectionnez `New Resource...`, puis recherchez et sélectionnez le `class_name` de votre définition (par exemple, `ItemDef`). Nommez le fichier `.tres` de manière descriptive (par exemple, `item_sword.tres`).
    *   **Via le code :** Il est également possible de créer et de sauvegarder des instances de `Custom Resources` par script, ce qui est utile pour la génération de contenu ou la migration de données.

    ```gdscript
    # Exemple de création et sauvegarde d'un ItemDef par script
    var new_item_def = ItemDef.new()
    new_item_def.defName = "sword_iron"
    new_item_def.label = "Épée en Fer"
    new_item_def.description = "Une épée simple en fer."
    new_item_def.item_type = ItemDef.ItemType.WEAPON
    new_item_def.stack_size = 1
    new_item_def.base_value = 10.0
    new_item_def.weight = 2.5
    new_item_def.tags = ["weapon", "melee"]

    ResourceSaver.save(new_item_def, "res://guildforge/resources/definitions/items/sword_iron.tres")
    ```

Ces étapes garantissent que les définitions sont correctement intégrées et utilisables dans le projet Godot, offrant une approche robuste et flexible pour la gestion des données de jeu.

## 3. Stratégie de Migration des Données XML vers Godot Resources

### 3.1. Contexte des Fichiers XML (Référence Brute)

Les définitions de jeu (Defs) et autres catégories étaient historiquement stockées dans des fichiers XML, inspirées par le modèle de RimWorld. Ces fichiers sont désormais disponibles en tant que références brutes et immuables dans le dossier `xml_md_documentation/raw_xml_content`. Chaque fichier Markdown dans ce dossier représente un fichier XML original et contient son contenu brut encapsulé dans un bloc de code.

#### 3.1.1. Exemple de Structure XML (Référence)

Pour illustrer, voici un exemple de `ItemDef` tel qu'il pourrait être trouvé dans un fichier Markdown de référence :

```xml
<Defs>
    <ItemDef>
        <defName>IronSword</defName>
        <label>Épée en Fer</label>
        <description>Une épée simple en fer, efficace pour le combat rapproché.</description>
        <graphicPath>items/weapons/iron_sword</graphicPath>
        <statBases>
            <MarketValue>150</MarketValue>
            <MeleeDamage>10</MeleeDamage>
            <Mass>2.5</Mass>
        </statBases>
        <techLevel>Medieval</techLevel>
    </ItemDef>
</Defs>
```

#### 3.1.2. Avantages et Inconvénients du XML (Contexte Historique et d'Analyse)

Il est important de comprendre les caractéristiques du format XML pour mieux appréhender les données brutes. Ces points sont désormais des sujets d'analyse et de comparaison avec le nouveau système de Resources.

| Avantages (pour l'analyse des fichiers bruts) | Inconvénients (pour l'intégration directe dans Godot) |
| :--- | :--- |
| **Lisibilité Humaine** : Facilite la lecture et la compréhension des structures de données brutes. | **Intégration Complexe avec Godot** : Nécessite des parsers et une logique de chargement spécifique. |
| **Flexibilité de la Structure** : Permet une grande variété de structures de données, utile pour l'analyse des patterns. | **Performance de Parsing** : Peut être moins performant que les Resources pour le chargement en jeu. |
| **Facilité d'Édition Manuelle** : Historiquement, permettait des modifications directes, mais désormais ces fichiers sont des références immuables. | **Absence de Validation de Schéma Native** : Nécessite des outils externes (XSD) pour la validation, contrairement aux types de Godot. |

### 3.2. Principes de la Migration

La migration vers les Resources de Godot est la direction stratégique. L'analyse approfondie des fichiers XML/MD bruts est essentielle pour informer cette migration.

*   **Standardisation :** Toutes les nouvelles définitions de jeu sont créées directement en tant que Resources.
*   **Conversion Progressive :** Les définitions XML existantes sont converties par lots, en s'appuyant sur l'analyse des fichiers MD bruts pour guider le processus.
*   **Coexistence Temporaire :** Pendant la transition, le jeu gère les deux formats via un `DataManager` adapté.
*   **Automatisation :** Des scripts de conversion sont développés pour faciliter le passage du XML aux Resources, dont la conception bénéficiera de l'analyse des structures XML brutes.

### 3.3. Processus de Conversion des Données XML Existantes

La conversion des données XML existantes vers le format `Custom Resource` de Godot nécessitera un script de migration. Ce script lira les fichiers XML, parsers leurs contenus et créera les instances de `Resources` correspondantes.

#### Étapes du Processus de Migration :

1.  **Lecture XML :** Utiliser la classe `XMLParser` de Godot.
2.  **Extraction des Données :** Extraire les propriétés de chaque nœud XML.
3.  **Création de Resources :** Instancier la `Custom Resource` Godot appropriée (ex: `ItemDef`, `BuildingDef`).
4.  **Assignation des Propriétés :** Remplir les propriétés de la `...Def` avec les données extraites.
5.  **Sauvegarde :** Sauvegarder la `Custom Resource` en tant que fichier `.tres`.

## 4. Étapes Suivantes et Références

*   **Analyse Approfondie des Fichiers XML/MD Bruts :** Utiliser les méthodologies définies pour identifier les logiques communes, les différences, les patterns et les types de données. Ces analyses seront documentées dans `xml_data_analysis/analysis_and_context`.
*   **Définition des Structures de Resources :** Sur la base de l'analyse, affiner les structures des Resources pour qu'elles reflètent au mieux les données XML existantes et les besoins du projet.
*   **Développement des Scripts de Conversion :** Créer ou améliorer les scripts de conversion XML vers Resources, en s'appuyant sur la compréhension des données brutes.
*   **Mise à Jour du `DataManager` :** Adapter le `DataManager` pour gérer la coexistence et la transition vers les Resources.
*   **Archivage des Fichiers XML Originaux :** Les fichiers XML originaux, une fois convertis en MD et analysés, serviront de référence historique.

### Références

*   [Rapport Final d'Analyse XML - GuildForge](./data_definitions_xml_originaux.md)
*   [Analyse Critique de la Méthodologie Actuelle](./data_definitions_xml_originaux.md)
*   [Méthodes Alternatives d'Analyse de Données Structurées](./data_definitions_xml_originaux.md)
*   [Standardisation des Formats de Données Godot](../gestion_projet/conventions_directives/coding_conventions.md)
*   [Historique des Décisions : Migration des Définitions de Jeu](../gestion_projet/communication_workflow/decision_history.md)

*   [xml.etree.ElementTree --- The ElementTree XML API](https://docs.python.org/fr/dev/library/xml.etree.elementtree.html)

