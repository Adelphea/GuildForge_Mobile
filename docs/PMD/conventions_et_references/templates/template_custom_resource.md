# Modèle de Custom Resource (CR)

**Auteur :** [Nom du Responsable]
**Date :** [Date de Création/Révision]
**Version :** 1.0
**Tags :** [cr, custom_resource, [type_cr]]

---

## 1. Définition

*   **Nom de la Classe GDScript :** `CR_[Type]`
*   **Hérite de :** `Resource` ou `CR_Base`
*   **Objectif :** Décrire l'objectif de cette ressource (ex: Définir les propriétés de base d'un objet de type "Arme").

## 2. Propriétés (Exports)

| Nom de la Propriété | Type GDScript | Description | Convention de Nommage |
| :--- | :--- | :--- | :--- |
| `id` | `String` | Identifiant unique de la ressource (ex: `ITEM_WOOD_LOG`). | `SCREAMING_SNAKE_CASE` |
| `display_name` | `String` | Nom affiché dans l'interface utilisateur. | Texte libre |
| `description` | `String` | Description détaillée. | Texte libre |
| `icon_path` | `String` | Chemin vers l'icône de l'asset. | `res://assets/...` |
| `[Propriété Spécifique]` | `[Type]` | [Description] | `snake_case` |

## 3. Exemple d'Utilisation

Décrire brièvement comment cette ressource est instanciée et utilisée dans le code.

```gdscript
# Exemple d'instanciation et d'accès
var wood_log_def: CR_Item = load("res://data/cr/CR_Item_WoodLog.tres")
print(wood_log_def.display_name)
```
