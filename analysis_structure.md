# Analyse de la Structure Actuelle du Dépôt GuildForge Mobile

## 1. Structure Générale

Le dépôt est principalement axé sur la documentation, structuré autour de trois piliers principaux sous le dossier `docs/`:
1.  **GDD** (Game Design Document)
2.  **PMD** (Project Management Document)
3.  **TDD** (Technical Design Document)

Cette séparation est **excellente** et conforme aux meilleures pratiques de gestion de projet de jeu.

## 2. Conventions Existant (PMD/conventions_et_references)

Quatre documents clés définissent les conventions :
*   `conventions_generales.md`
*   `conventions_codage.md`
*   `conventions_nommage.md`
*   `lignes_directrices_documentation.md`

Ces documents sont bien rédigés et couvrent les aspects essentiels (nommage, codage GDScript, documentation Markdown).

## 3. Problématiques et Axes d'Amélioration Identifiés

### A. Cohérence et Exhaustivité des Conventions

| Problématique | Description | Impact |
| :--- | :--- | :--- |
| **Chevauchement des Conventions** | Les règles de nommage sont réparties entre `conventions_nommage.md` et `conventions_codage.md` (section 3.1). Une consolidation ou une référence croisée plus claire est nécessaire. | Confusion potentielle pour les contributeurs. |
| **Conventions Manquantes** | Absence de conventions claires pour les **Custom Resources (CR)**, qui sont mentionnées comme cruciales pour le développement. Les CR sont mentionnées dans le TDD (`data_definitions_xml_originaux.md`) et le GDD, mais leurs conventions de structure et de contenu ne sont pas détaillées. | Risque d'incohérence dans les données fondamentales du jeu. |
| **Conventions de Fichiers Non-MD** | Les conventions se concentrent sur le code (GDScript) et la documentation (Markdown). Les conventions pour les fichiers de données (XML, JSON, CSV) ou les fichiers de configuration (Godot `.cfg`, `.import`) sont absentes ou très limitées. | Incohérence dans la gestion des données et des configurations. |

### B. Structure du GDD (Game Design Document)

| Problématique | Description | Impact |
| :--- | :--- | :--- |
| **Numérotation et Ordre** | La numérotation des dossiers (ex: `01_systeme_monde`) et des fichiers (ex: `01_generation_procedurale.md`) est excellente pour l'ordre, mais le `README.md` dans chaque sous-dossier est redondant s'il ne sert que de table des matières. | Ajout de fichiers inutiles ou sous-utilisés. |
| **Détail Manquant** | Les fichiers sont des **squelettes** de documentation. Ils définissent les sujets mais le contenu est souvent très limité ou absent (ex: `GuildForge_Mobile/docs/GDD/10_design_artistique/animations/principes_animation.md`). | L'objectif de "finaliser la documentation" nécessite un enrichissement massif. |

### C. Structure du PMD et TDD

| Problématique | Description | Impact |
| :--- | :--- | :--- |
| **Clarté des Rôles (OWNERS)** | Les fichiers `OWNERS.md` existent dans `PMD` et `TDD`, mais leur contenu n'est pas clair. S'agit-il des responsables de la documentation ou des responsables des domaines techniques/projet ? | Ambiguïté sur les responsabilités. |
| **Stratégie d'IA** | Le fichier `strategie_dev_ia.md` est dans `PMD/communication_workflow`. Il devrait peut-être être dans `TDD` s'il est technique, ou être renommé pour clarifier son rôle (ex: `strategie_integration_ia.md`). | Mauvaise classification du contenu. |

## 4. Conclusion de l'Analyse

La base est **solide**. La structure en `GDD/PMD/TDD` et l'existence de conventions claires sont d'excellents points de départ.

L'effort principal de restructuration doit se concentrer sur :
1.  **Centralisation/Clarification des Conventions** (surtout pour le nommage).
2.  **Création de Conventions Détaillées pour les Custom Resources (CR)**.
3.  **Restructuration Mineure** (suppression des `README.md` redondants, clarification des rôles).
4.  **Enrichissement Massif** des fichiers squelettes pour atteindre l'objectif de "documentation finale".

Ces points serviront de base pour les 100 propositions d'amélioration.
