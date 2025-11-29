# Plan de Travail Exhaustif : Régénération des Defs GDScript

**Objectif Global :** Régénérer les 188 fichiers GDScript générés pour qu'ils correspondent à la structure et à la qualité des 6 classes de base finalisées, puis valider les propositions d'amélioration.

---

## Phase 1 : Préparation et Analyse Initiale (Phases 1 à 8)

| Phase | Titre | Objectif |
| :--- | :--- | :--- |
| **1** | Identifier et analyser la structure des 6 classes de base finalisées. | Comprendre le modèle architectural (Héritage, Composition, Typage fort). |
| **2** | Identifier et analyser la structure des 188 fichiers GDScript générés incorrectement. | Comprendre les erreurs de la génération précédente. |
| **3** | Comparer les structures et déterminer le modèle de génération correct. | Définir les règles de conversion du modèle XML/C# vers GDScript. |
| **4** | Développer un script de régénération basé sur le modèle correct. | Ébaucher le script de génération (avant sa recréation). |
| **5** | Exécuter la régénération des 188 fichiers GDScript. | Tentative initiale de correction. |
| **6** | Valider la qualité des fichiers régénérés et préparer le rapport. | Vérification des résultats. |
| **7** | Analyser le contenu du dossier schema_mfd pour comprendre le travail du prédécesseur. | Comprendre la source des propriétés des Defs. |
| **8** | Générer 50 nouvelles propositions d'amélioration adaptées à la nouvelle structure des classes GDScript. | Préparation des propositions initiales. |

## Phase 2 : Stabilisation de l'Environnement (Phases 9 à 13)

| Phase | Titre | Objectif |
| :--- | :--- | :--- |
| **9** | Réinitialiser le dépôt au commit 5d42e75. | Revenir à l'état initial de la tâche. |
| **10** | Supprimer les dossiers de propositions, research et analysis du main. | Nettoyer les fichiers temporaires. |
| **11** | Déplacer le dossier scripts/resources et le .gitignore vers GuildForge_Mobile/GuildForge/scripts/resources. | Corriger l'emplacement des 6 classes de base. |
| **12** | Supprimer les dossiers sources vides. | Finaliser le nettoyage de la structure des dossiers. |
| **13** | Pousser les changements sur GitHub. | Synchroniser l'état propre avec le dépôt distant. |

## Phase 3 : Régénération Itérative et Contrôlée (Phases 14 à 24)

Cette phase applique la méthode de travail segmentée en groupes de 10 DefTypes.

| Phase | Titre | Objectif |
| :--- | :--- | :--- |
| **14** | Définir la méthode de travail pour l'analyse et la correction des 188 Defs. | Formaliser l'approche par groupes de DefTypes. |
| **15** | Appliquer la méthode de travail pour analyser et corriger la structure des BiomeDef.gd. | Cas d'étude pour valider le modèle de conversion. |
| **16** | **Recréer le script de génération Python.** | Développer l'outil capable de générer le code GDScript corrigé. |
| **17** | Identifier les 10 premiers DefTypes à traiter. | Sélectionner le premier groupe de DefTypes à régénérer. |
| **18** | Régénérer le Groupe 1 (10 DefTypes). | Exécuter le script de génération pour le premier groupe. |
| **19** | Validation Manuelle du Groupe 1. | Vérifier la conformité des 10 fichiers générés. |
| **20** | Régénération du Groupe 2 (10 DefTypes). | Exécuter le script de génération pour le deuxième groupe. |
| **21** | Validation Manuelle du Groupe 2. | Vérifier la conformité des 10 fichiers générés. |
| **22** | Régénération du Groupe 3 (10 DefTypes). | Exécuter le script de génération pour le troisième groupe. |
| **23** | Validation Manuelle du Groupe 3. | Vérifier la conformité des 10 fichiers générés. |
| **24** | Régénération des Groupes Restants (158 DefTypes). | Automatiser la régénération pour les DefTypes restants après validation des premiers groupes. |

## Phase 4 : Finalisation et Livraison (Phases 25 à 29)

| Phase | Titre | Objectif |
| :--- | :--- | :--- |
| **25** | Valider la qualité des fichiers régénérés et préparer le rapport. | Synthétiser les résultats de la régénération complète. |
| **26** | Générer 50 nouvelles propositions d'amélioration adaptées à la nouvelle structure des classes GDScript. | Créer les propositions basées sur le code corrigé. |
| **27** | Présenter les nouvelles propositions à l'utilisateur pour validation. | Demander la validation pour la phase d'implémentation. |
| **28** | Appliquer les propositions d'amélioration validées par l'utilisateur. | Implémenter les fonctionnalités demandées. |
| **29** | Finaliser le projet et livrer le résultat à l'utilisateur. | Clôturer la tâche et fournir le dépôt mis à jour. |
