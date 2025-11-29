---
Titre: Conventions de Documentation Générale
Auteur: Manus AI
Date: 28/11/2025
Version: 2.0
Statut: Brouillon
---
# Conventions de Documentation Générale

Ce document établit les conventions de style et de structure à respecter pour tous les documents Markdown du dépôt (GDD, TDD, PMD).

---

## Historique des Révisions

| Version | Date | Auteur | Résumé du Changement |
| :--- | :--- | :--- | :--- |
| 2.0 | 28/11/2025 | Manus AI | Définition des conventions de structure (métadonnées YAML, TOC auto, blocs sémantiques, historique des révisions). |
| 1.0 | 12/10/2025 | Auteur Initial | Création du document initial. |

## Table des Matières

1.  [Structure du Document](#1-structure-du-document)
2.  [Contenu et Formatage](#2-contenu-et-formatage)
3.  [Références](#3-références)

---

## 1. Structure du Document

### 1.1. Métadonnées (YAML Front Matter)

Chaque document Markdown doit commencer par un bloc de métadonnées pour la traçabilité et l'automatisation :

```yaml
---
Titre: Le Titre Complet du Document
Auteur: Nom de l'Auteur
Date: JJ/MM/AAAA
Version: 1.0
Statut: Brouillon # Doit être : Brouillon, En Revue, Finalisé
---
```

### 1.2. Table des Matières (TOC)

Pour tout document de plus de 50 lignes, une Table des Matières doit être présente immédiatement après l'en-tête principal. Elle doit être générée automatiquement par l'outil de rendu (GitHub, MkDocs, etc.) en utilisant la syntaxe de titre standard.

### 1.3. Historique des Révisions

Une section "Historique des Révisions" doit être présente après l'introduction pour suivre l'évolution du contenu.

| Version | Date | Auteur | Résumé du Changement |
| :--- | :--- | :--- | :--- |
| 1.0 | 01/01/2025 | Auteur Initial | Création du document. |

### 1.4. Références

La section de référence doit être structurée pour distinguer les sources internes et externes.

#### Références Internes

Liste des liens relatifs vers d'autres documents du dépôt.

*   [Conventions de Codage GDScript](./conventions_codage.md)

#### Références Externes

Liste des liens absolus (URL complètes) vers des sources externes.

*   [Documentation Godot Engine](https://docs.godotengine.org/)

## 2. Contenu et Formatage

### 2.1. Blocs de Code et Données

*   **Code :** Tous les exemples de code doivent être dans des blocs de code avec la spécification du langage.
    ```gdscript
    # Exemple de code GDScript
    var health: int = 100
    ```
*   **Tableaux :** Les tableaux sont obligatoires pour présenter toutes les données structurées (statistiques, listes de propriétés, etc.).

### 2.2. Mise en Évidence Sémantique

*   **Termes du Glossaire :** Les termes définis dans le glossaire doivent être mis en **gras** lors de leur première apparition dans un document.
*   **Citations :** Utiliser les blocs de citation (`>`) pour les définitions et les citations.
*   **Alertes :** Utiliser les blocs d'alerte pour les informations sémantiques :
    *   **Note :** `> [!NOTE] Information contextuelle ou précision.`
    *   **Avertissement :** `> [!WARNING] Point critique, décision sujette à changement ou dépendance non résolue.`

### 2.3. Images et Schémas

Toutes les images et schémas doivent être accompagnés d'une légende descriptive et d'une référence au fichier source (chemin relatif).

```markdown
![Diagramme de flux du système de combat](assets/combat_flow.png)
```

### 2.4. Liens

*   **Liens Internes :** Doivent être **relatifs** (ex: `./conventions_codage.md`).
*   **Liens Externes :** Doivent être **absolus** (URL complètes).

## 3. Références

*   [Conventions de Codage GDScript](./conventions_codage.md)
*   [Conventions de Nommage des Fichiers et Dossiers](./conventions_nommage.md)
*   [Conventions de Nommage des Assets Généraux](./CONVENTIONS_ASSETS_GENERAUX.md)
*   [Conventions de Configuration](./CONVENTIONS_CONFIGURATION.md)
