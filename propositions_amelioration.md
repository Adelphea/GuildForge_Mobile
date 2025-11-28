# 100 Propositions d'Amélioration, d'Optimisation et de Restructuration pour GuildForge Mobile

Ce document présente 100 propositions visant à restructurer, optimiser et enrichir la documentation du dépôt `Adelphea/GuildForge_Mobile`. L'objectif principal est d'établir des **conventions et principes clairs et exhaustifs** qui serviront de fondation pour la finalisation de la documentation et les futures phases de développement.

---

## I. Restructuration et Centralisation des Conventions (Propositions 1 à 15)

Ces propositions visent à clarifier la structure des documents de conventions pour éliminer les chevauchements et assurer une source unique de vérité pour chaque type de règle.

| # | Type | Proposition | Fichier(s) Impacté(s) | Objectif |
| :--- | :--- | :--- | :--- | :--- |
| **1** | **Restructuration** | Créer un nouveau document central, `PRINCIPES_FONDAMENTAUX.md`, à la racine de `docs/PMD/conventions_et_references/` pour y déplacer les sections "Introduction" et "Principes Fondamentaux" de `conventions_generales.md`. | `conventions_generales.md` (Révision), Nouveau `PRINCIPES_FONDAMENTAUX.md` | Centraliser la philosophie du projet. |
| **2** | **Révision** | Renommer `conventions_generales.md` en `CONVENTIONS_DOCUMENTATION_GENERALE.md` et y consolider toutes les règles de style de documentation (y compris les directives de `lignes_directrices_documentation.md`). | `conventions_generales.md`, `lignes_directrices_documentation.md` | Simplifier la structure de la documentation. |
| **3** | **Consolidation** | Déplacer toutes les règles de nommage spécifiques au code (variables, fonctions, classes GDScript) de `conventions_nommage.md` vers `conventions_codage.md`. | `conventions_nommage.md`, `conventions_codage.md` | Séparer clairement les conventions de nommage des assets/fichiers et celles du code. |
| **4** | **Création** | Créer un nouveau dossier `docs/PMD/conventions_et_references/templates/` pour y stocker des modèles de fichiers (ex: `template_gdd_section.md`, `template_custom_resource.md`). | Nouveau dossier et fichiers | Faciliter la création de nouveaux documents et ressources. |
| **5** | **Révision** | Mettre à jour tous les liens relatifs dans les documents de conventions suite aux renommages et déplacements. | Tous les fichiers de `conventions_et_references` | Assurer l'intégrité des liens. |
| **6** | **Optimisation** | Ajouter une section "Comment Contribuer" dans `PRINCIPES_FONDAMENTAUX.md` pour guider les nouveaux contributeurs vers les conventions pertinentes. | `PRINCIPES_FONDAMENTAUX.md` | Améliorer l'onboarding. |
| **7** | **Restructuration** | Supprimer les fichiers `README.md` des sous-dossiers du GDD (ex: `docs/GDD/01_systeme_monde/README.md`) s'ils ne contiennent qu'une table des matières, et utiliser le `README.md` principal du GDD comme point d'entrée unique. | 12 fichiers `README.md` dans GDD | Réduire la redondance. |
| **8** | **Création** | Créer un document `CONVENTIONS_ASSETS_GENERAUX.md` pour regrouper les règles de nommage et de structure des assets (sprites, audio, scènes, etc.) qui ne sont pas du code. | Nouveau `CONVENTIONS_ASSETS_GENERAUX.md` | Clarifier les règles pour les artistes et designers. |
| **9** | **Révision** | S'assurer que chaque document de convention commence par une table des matières cliquable. | Tous les documents de conventions | Améliorer la navigabilité. |
| **10** | **Optimisation** | Intégrer une section sur l'utilisation des **métadonnées** (Auteur, Date, Version, Tags) dans `CONVENTIONS_DOCUMENTATION_GENERALE.md` et la rendre obligatoire. | `CONVENTIONS_DOCUMENTATION_GENERALE.md` | Standardiser les en-têtes de fichiers. |
| **11** | **Révision** | Clarifier le rôle des fichiers `OWNERS.md` dans `PMD` et `TDD` : ils doivent lister les responsables de la **documentation** de cette section, et non les responsables du code. | `docs/PMD/OWNERS.md`, `docs/TDD/OWNERS.md` | Lever l'ambiguïté sur les responsabilités. |
| **12** | **Classification** | Déplacer `strategie_dev_ia.md` de `PMD/communication_workflow` à `TDD/architecture_code` ou le renommer en `integration_ia_technique.md` pour refléter son contenu technique. | `strategie_dev_ia.md` | Améliorer la classification TDD/PMD. |
| **13** | **Création** | Créer un document `CONVENTIONS_CONFIGURATION.md` pour les fichiers de configuration Godot (`.cfg`, `.import`) et les fichiers de projet. | Nouveau `CONVENTIONS_CONFIGURATION.md` | Standardiser la gestion des configurations. |
| **14** | **Optimisation** | Ajouter un diagramme de flux dans `PRINCIPES_FONDAMENTAUX.md` illustrant le processus de validation d'une nouvelle convention. | `PRINCIPES_FONDAMENTAUX.md` | Formaliser la gouvernance des conventions. |
| **15** | **Révision** | S'assurer que le `README.md` principal du dépôt pointe clairement vers les `README.md` de `GDD`, `PMD`, et `TDD`. | `GuildForge_Mobile/README.md` | Améliorer le point d'entrée du dépôt. |

---

## II. Conventions de Nommage (Propositions 16 à 35)

Ces propositions détaillent et étendent les règles de nommage, en particulier pour les Custom Resources (CR) et les assets.

| # | Type | Proposition | Fichier(s) Impacté(s) | Détail de la Convention |
| :--- | :--- | :--- | :--- | :--- |
| **16** | **Création CR** | Définir une convention de nommage stricte pour les **Custom Resources (CR)** : `CR_[Type]_[NomDétaillé].tres`. | `conventions_nommage.md` | Ex: `CR_Item_WoodLog.tres`, `CR_Building_StoneWall.tres`. |
| **17** | **Création CR** | Ajouter une règle pour les scripts de CR : `CR_[Type].gd` (ex: `CR_Item.gd`) pour les classes de base. | `conventions_codage.md` | Faciliter l'identification des classes de base de CR. |
| **18** | **Nommage Fichiers** | Rendre obligatoire l'utilisation du `snake_case` en minuscules pour tous les noms de fichiers et dossiers de documentation (sauf pour les classes de code en `PascalCase`). | `CONVENTIONS_DOCUMENTATION_GENERALE.md` | Assurer la compatibilité multiplateforme. |
| **19** | **Nommage Fichiers** | Formaliser l'utilisation des préfixes numériques (ex: `01_`) pour les dossiers et fichiers du GDD et TDD afin de garantir l'ordre. | `CONVENTIONS_DOCUMENTATION_GENERALE.md` | Maintenir l'ordre logique. |
| **20** | **Nommage Assets** | Ajouter un préfixe de type pour les scènes Godot (`.tscn`) : `SCN_` pour les scènes principales, `UI_` pour les interfaces. | `CONVENTIONS_ASSETS_GENERAUX.md` | Ex: `SCN_MainMenu.tscn`, `UI_InventorySlot.tscn`. |
| **21** | **Nommage Assets** | Standardiser le nommage des textures : `[asset_name]_[type]_[variant].png`. | `CONVENTIONS_ASSETS_GENERAUX.md` | Ex: `colon_idle_diffuse.png`, `colon_idle_normal.png`. |
| **22** | **Nommage Audio** | Étendre les préfixes audio : `mus_` (musique), `sfx_` (effets sonores), `voc_` (voix/dialogues). | `CONVENTIONS_ASSETS_GENERAUX.md` | Améliorer la classification audio. |
| **23** | **Nommage Code** | Rendre obligatoire le typage explicite des variables et des retours de fonctions en GDScript. | `conventions_codage.md` | Améliorer la lisibilité et la détection d'erreurs. |
| **24** | **Nommage Code** | Définir une convention pour les variables privées (internes à la classe) en GDScript, par exemple, en utilisant un underscore de tête (`_variable_privee`). | `conventions_codage.md` | Clarifier la portée des variables. |
| **25** | **Nommage Code** | Formaliser l'utilisation de `PascalCase` pour les **Singletons** (AutoLoad) et s'assurer que leur nom de fichier correspond à leur nom de classe. | `conventions_codage.md` | Standardiser les services globaux. |
| **26** | **Nommage Code** | Ajouter une règle pour les chemins de nœuds dans le code : utiliser la fonction `$NodeName` ou `get_node("NodeName")` et éviter les chemins absolus. | `conventions_codage.md` | Améliorer la robustesse du code. |
| **27** | **Nommage Code** | Définir une convention pour les **énumérations** en GDScript : `EnumName.VALUE_NAME` en `SCREAMING_SNAKE_CASE`. | `conventions_codage.md` | Standardiser les constantes énumérées. |
| **28** | **Nommage Code** | Exiger que les signaux soient nommés au passé pour les événements terminés (ex: `item_collected`) ou au présent pour les états (ex: `is_moving`). | `conventions_codage.md` | Clarifier la sémantique des signaux. |
| **29** | **Nommage Modèles 3D** | Intégrer les conventions de nommage des modèles 3D (ex: `SM_` pour Static Mesh, `SK_` pour Skeletal Mesh) dans `docs/GDD/10_design_artistique/modelisation_3d/conventions_nommage_modeles.md`. | `conventions_nommage_modeles.md` | Aligner avec les standards de l'industrie du jeu. |
| **30** | **Nommage Matériaux** | Définir une convention pour les matériaux Godot : `M_[NomAsset]_[Type].tres`. | `CONVENTIONS_ASSETS_GENERAUX.md` | Ex: `M_Wood_PBR.tres`. |
| **31** | **Nommage UI** | Définir des préfixes pour les éléments d'interface utilisateur (UI) dans les scènes Godot (ex: `Btn_`, `Lbl_`, `Pnl_`). | `conventions_codage.md` | Faciliter l'identification des nœuds UI. |
| **32** | **Nommage Fichiers** | Ajouter une règle pour les fichiers temporaires ou d'exemple : préfixer par `_temp_` ou `_example_`. | `conventions_nommage.md` | Éviter l'intégration accidentelle de fichiers non finaux. |
| **33** | **Nommage Fichiers** | Exiger que les fichiers de données externes (XML, JSON) soient nommés en `kebab-case` (ex: `game-data-items.json`). | `conventions_nommage.md` | Standardiser les formats de données. |
| **34** | **Nommage Code** | Ajouter une section sur les conventions de nommage des **Groupes** Godot. | `conventions_codage.md` | Standardiser l'utilisation des groupes. |
| **35** | **Nommage Code** | Définir une convention pour les **constantes mathématiques** ou physiques : `MATH_PI`, `PHYSICS_GRAVITY`. | `conventions_codage.md` | Clarifier les constantes non-jeu. |

---

## III. Conventions de Structure et de Contenu (Propositions 36 à 50)

Ces propositions se concentrent sur la structure interne des fichiers de documentation et l'ajout de sections obligatoires.

| # | Type | Proposition | Fichier(s) Impacté(s) | Détail de la Convention |
| :--- | :--- | :--- | :--- | :--- |
| **36** | **Structure Doc** | Rendre obligatoire la section "Historique des Révisions" à la fin de chaque document majeur (GDD, PMD, TDD). | `CONVENTIONS_DOCUMENTATION_GENERALE.md` | Assurer la traçabilité des changements. |
| **37** | **Structure Doc** | Exiger l'utilisation de la balise `[TBD]` (To Be Determined) pour marquer clairement les sections incomplètes ou nécessitant un contenu futur. | `CONVENTIONS_DOCUMENTATION_GENERALE.md` | Faciliter le suivi de l'enrichissement. |
| **38** | **Structure Doc** | Définir une structure standard pour les sections du GDD : Introduction, Objectifs, Détails du Système, Implémentation Technique (liens vers TDD), Risques. | `template_gdd_section.md` | Uniformiser le contenu du GDD. |
| **39** | **Structure Doc** | Ajouter une section "Terminologie Clé" au début de chaque document GDD complexe. | `CONVENTIONS_DOCUMENTATION_GENERALE.md` | Clarifier le vocabulaire spécifique. |
| **40** | **Structure Code** | Définir une structure de fichier GDScript standard : Constantes, Exports, Variables Privées, Variables Publiques, Fonctions Godot (`_ready`), Fonctions Publiques, Fonctions Privées. | `conventions_codage.md` | Uniformiser l'organisation du code. |
| **41** | **Structure Code** | Rendre obligatoire l'utilisation de `region` ou de commentaires de section (`# MARK:`) pour structurer les longs fichiers GDScript. | `conventions_codage.md` | Améliorer la navigabilité dans le code. |
| **42** | **Structure CR** | Créer un document `STRUCTURE_CUSTOM_RESOURCE.md` détaillant les champs obligatoires pour les CR de base (ex: `id`, `display_name`, `description`, `icon_path`). | Nouveau `STRUCTURE_CUSTOM_RESOURCE.md` | Standardiser la définition des données. |
| **43** | **Structure CR** | Exiger que chaque CR soit accompagnée d'un exemple de fichier `.tres` dans un dossier `examples/`. | `STRUCTURE_CUSTOM_RESOURCE.md` | Fournir des références concrètes. |
| **44** | **Structure TDD** | Rendre obligatoire l'inclusion de diagrammes d'architecture (UML, D2, Mermaid) dans les sections clés du TDD. | `docs/TDD/architecture_code/` | Visualiser la structure technique. |
| **45** | **Structure TDD** | Ajouter une section "Décisions d'Implémentation" dans chaque document TDD pour justifier les choix techniques. | `docs/TDD/architecture_code/` | Documenter le "pourquoi" des choix. |
| **46** | **Structure PMD** | Formaliser l'utilisation de tableaux pour le suivi des tâches et des responsabilités dans la `feuille_route`. | `docs/PMD/feuille_route/` | Améliorer le suivi de projet. |
| **47** | **Structure PMD** | Exiger que les "Risques" soient classifiés par probabilité et impact (matrice 5x5). | `docs/PMD/risques.md` | Standardiser l'analyse des risques. |
| **48** | **Structure Doc** | Ajouter une règle sur l'utilisation des images : toutes les images doivent être stockées dans un dossier `assets/` relatif au document et compressées. | `CONVENTIONS_DOCUMENTATION_GENERALE.md` | Optimiser le poids du dépôt. |
| **49** | **Structure Doc** | Définir une convention pour les notes et avertissements (ex: `> [!NOTE]`, `> [!WARNING]`) pour les blocs d'information importants. | `CONVENTIONS_DOCUMENTATION_GENERALE.md` | Mettre en évidence les informations critiques. |
| **50** | **Structure Doc** | Exiger l'utilisation de la fonction de citation pour les références externes (ex: `> Citation [1]`). | `CONVENTIONS_DOCUMENTATION_GENERALE.md` | Améliorer la crédibilité de la documentation. |

---

## IV. Améliorations Spécifiques au Contenu (Propositions 51 à 100)

Ces propositions se concentrent sur l'enrichissement des fichiers squelettes existants pour les amener à leur forme "finale".

### A. GDD - Game Design Document (Propositions 51 à 75)

| # | Type | Proposition | Fichier(s) Impacté(s) | Contenu à Ajouter / Détailler |
| :--- | :--- | :--- | :--- | :--- |
| **51** | **Enrichissement** | Détailler les 5 types de biomes principaux, leurs ressources uniques et les défis environnementaux associés. | `02_biomes_et_environnement.md` | Spécifications de design. |
| **52** | **Enrichissement** | Spécifier la mécanique de "fatigue" et de "moral" des colons et son impact sur la productivité. | `03_besoins_et_humeur.md` | Détails du système de simulation. |
| **53** | **Enrichissement** | Définir les 3 niveaux de blessures (mineure, sérieuse, critique) et les traitements requis. | `04_sante_et_blessures.md` | Spécifications de gameplay. |
| **54** | **Enrichissement** | Créer un tableau des 10 premières ressources de base (bois, pierre, nourriture, etc.) avec leurs IDs et leurs propriétés. | `01_collecte_et_extraction.md` | Données de base du jeu. |
| **55** | **Enrichissement** | Détailler le processus de "découverte" et d'obtention de "points d'inspiration" pour la progression technologique. | `02_inspiration_et_decouvertes.md` | Mécanique de progression. |
| **56** | **Enrichissement** | Spécifier les règles de collision et de placement des structures de construction. | `01_structures_et_mobilier.md` | Règles de construction. |
| **57** | **Enrichissement** | Détailler le système de ciblage et de ligne de vue pour le combat. | `01_mecaniques_de_base.md` | Règles de combat. |
| **58** | **Enrichissement** | Créer une liste des 5 factions initiales avec leurs objectifs et leurs relations de départ (amical, neutre, hostile). | `03_factions_et_relations.md` | Lore et gameplay. |
| **59** | **Enrichissement** | Détailler les 3 types de quêtes générées par le Conteur IA (survie, exploration, diplomatie). | `03_quetes_et_scenarios.md` | Spécifications du Conteur IA. |
| **60** | **Enrichissement** | Ajouter un tableau des 10 compétences initiales des colons et leur impact sur les tâches. | `02_competences_et_traits.md` | Statistiques des personnages. |
| **61** | **Enrichissement** | Détailler la charte graphique : palette de couleurs principale (codes HEX/RGB). | `charte_graphique/palette_couleurs.md` | Spécifications artistiques. |
| **62** | **Enrichissement** | Ajouter des exemples de typographie pour l'UI, les titres et le corps de texte. | `charte_graphique/typographie.md` | Spécifications artistiques. |
| **63** | **Enrichissement** | Détailler le workflow d'animation pour les cycles de marche et d'inactivité. | `animations/workflow_animation_godot.md` | Spécifications techniques artistiques. |
| **64** | **Enrichissement** | Spécifier les résolutions cibles pour les textures (ex: 512x512 pour les objets, 1024x1024 pour le terrain). | `textures_materiaux/formats_resolutions.md` | Spécifications techniques artistiques. |
| **65** | **Enrichissement** | Détailler les principes de design sonore pour l'ambiance des biomes. | `design_sonore/ambiance_effets_sonores.md` | Spécifications audio. |
| **66** | **Enrichissement** | Créer un tableau des 5 thèmes musicaux principaux et les conditions de leur déclenchement. | `musique/themes_musicaux.md` | Spécifications audio. |
| **67** | **Enrichissement** | Détailler les principes de l'UX mobile (taille des boutons, gestes supportés). | `01_principes_directeurs_mobile.md` | Spécifications UX. |
| **68** | **Enrichissement** | Ajouter une section sur la gestion des animaux de ferme (reproduction, alimentation). | `01_animaux_sauvages_et_domestiques.md` | Détails du système Faune/Flore. |
| **69** | **Enrichissement** | Détailler le système de commerce : offre/demande et impact sur les prix. | `01_marche_et_valeurs.md` | Spécifications économiques. |
| **70** | **Enrichissement** | Ajouter une section sur la gestion des stocks (limites, priorités de stockage). | `04_gestion_des_stocks.md` | Détails du système de ressources. |
| **71** | **Enrichissement** | Détailler les 3 niveaux de qualité pour l'artisanat (commun, rare, épique). | `03_artisanat_et_fabrication.md` | Spécifications de production. |
| **72** | **Enrichissement** | Spécifier les règles de génération procédurale pour les points d'intérêt (ruines, donjons). | `01_generation_procedurale.md` | Détails du système Monde. |
| **73** | **Enrichissement** | Ajouter une section sur les "traits de personnalité" des colons et leur impact sur les relations sociales. | `05_relations_sociales.md` | Détails du système Personnages. |
| **74** | **Enrichissement** | Détailler les exigences en matière de polycount pour les modèles 3D (personnages, bâtiments, accessoires). | `modelisation_3d/optimisation_polycount.md` | Spécifications techniques artistiques. |
| **75** | **Enrichissement** | Ajouter une section sur la gestion du temps de jeu (cycle jour/nuit, saisons). | `08_gestion_quotidienne.md` | Détails du système Personnages. |

### B. TDD - Technical Design Document (Propositions 76 à 90)

| # | Type | Proposition | Fichier(s) Impacté(s) | Contenu à Ajouter / Détailler |
| :--- | :--- | :--- | :--- | :--- |
| **76** | **Enrichissement** | Détailler l'architecture de la gestion des données (Data-Oriented Design) et les principes de la conception axée sur les données. | `architecture_code/conception_axee_donnees.md` | Principes d'architecture. |
| **77** | **Enrichissement** | Spécifier l'utilisation des `ResourceLoader` et `ResourceSaver` pour la gestion des Custom Resources. | `architecture_code/gestion_donnees_godot.md` | Détails d'implémentation. |
| **78** | **Enrichissement** | Détailler la structure des fichiers XML originaux et la méthode de conversion/parsing vers les Custom Resources Godot. | `donnees_externes/data_definitions_xml_originaux.md` | Processus de données. |
| **79** | **Enrichissement** | Spécifier les stratégies de tests unitaires (GDUnit) pour les Singletons et les classes de logique pure. | `deploiement_tests/strategies_tests.md` | Qualité du code. |
| **80** | **Enrichissement** | Détailler le processus de CI/CD pour les builds Android et iOS (même si partiel). | `deploiement_tests/processus_build_android.md` | Processus de déploiement. |
| **81** | **Enrichissement** | Ajouter une liste des outils externes obligatoires (ex: éditeur de code, logiciel de versioning) et leur configuration. | `outils_environnement/outils_externes.md` | Environnement de travail. |
| **82** | **Enrichissement** | Détailler les principes de design logiciel (SOLID, DRY) appliqués au GDScript. | `architecture_code/principes_design_logiciel.md` | Qualité du code. |
| **83** | **Enrichissement** | Spécifier les techniques d'optimisation pour le rendu 3D (occlusion culling, LOD). | `optimisation_performance/strategies_optimisation.md` | Performance. |
| **84** | **Enrichissement** | Détailler la stratégie de gestion de l'état du jeu (ex: utilisation d'un Finite State Machine ou d'un pattern Redux-like). | `architecture_code/gestion_etat_jeu.md` | Architecture. |
| **85** | **Enrichissement** | Ajouter une section sur la gestion des erreurs et des exceptions en GDScript. | `conventions_codage.md` | Robustesse du code. |
| **86** | **Enrichissement** | Détailler les exigences de sécurité pour la sauvegarde des données utilisateur (chiffrement, intégrité). | `securite.md` | Sécurité. |
| **87** | **Enrichissement** | Spécifier les conventions pour les commentaires de documentation de code (DocStrings) en GDScript. | `conventions_codage.md` | Documentation interne. |
| **88** | **Enrichissement** | Détailler la structure des dossiers du projet Godot (ex: `res://scripts/`, `res://assets/`, `res://data/`). | `architecture_code/structure_projet_godot.md` | Organisation du projet. |
| **89** | **Enrichissement** | Ajouter une section sur la gestion des dépendances externes (addons Godot). | `outils_environnement/configuration_godot.md` | Gestion des dépendances. |
| **90** | **Enrichissement** | Détailler la stratégie de gestion des versions Git (Git Flow ou Trunk-Based Development). | `outils_environnement/gestion_versions_git.md` | Workflow de développement. |

### C. PMD - Project Management Document (Propositions 91 à 100)

| # | Type | Proposition | Fichier(s) Impacté(s) | Contenu à Ajouter / Détailler |
| :--- | :--- | :--- | :--- | :--- |
| **91** | **Enrichissement** | Détailler les métriques de succès pour la phase de développement (ex: couverture de test, vélocité). | `feuille_route/jalons_objectifs.md` | Suivi de projet. |
| **92** | **Enrichissement** | Ajouter une section sur la gestion des bugs (classification, priorité, workflow de résolution). | `communication_workflow/gestion_workflow.md` | Gestion des incidents. |
| **93** | **Enrichissement** | Détailler le processus de revue de code (qui, quand, quoi vérifier). | `communication_workflow/gestion_contributions.md` | Qualité des contributions. |
| **94** | **Enrichissement** | Formaliser le format des rapports de développement hebdomadaires. | `communication_workflow/dev_report_analysis.md` | Communication. |
| **95** | **Enrichissement** | Détailler les principes de monétisation (modèle économique, IAP, publicités). | `monetisation.md` | Stratégie commerciale. |
| **96** | **Enrichissement** | Ajouter une section sur la gestion des licences logicielles (Godot, librairies tierces). | `aspects_legaux.md` | Conformité légale. |
| **97** | **Enrichissement** | Détailler les rôles et responsabilités spécifiques des membres de l'équipe (ex: Rôle du "Data Designer", Rôle du "Technical Artist"). | `OWNERS.md` (PMD et TDD) | Organisation de l'équipe. |
| **98** | **Enrichissement** | Ajouter une section sur la gestion de la dette technique. | `retrospectives/README.md` | Amélioration continue. |
| **99** | **Enrichissement** | Détailler le processus de validation des Custom Resources (qui valide, quand). | `communication_workflow/gestion_contributions.md` | Contrôle qualité des données. |
| **100** | **Enrichissement** | Créer un document `GLOSSAIRE_TECHNIQUE.md` pour les termes spécifiques au moteur Godot et à l'architecture du jeu. | `glossaire.md` (Révision) | Clarification de la terminologie. |
