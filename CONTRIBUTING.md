# Règles de Contribution et Workflow de Validation (Agent Manus)

**Chemin du Fichier :** `CONTRIBUTING.md`
**Statut :** Finalisé

## I. Objectif et Portée

Ce document est le **point d'entrée unique** pour tout Agent Manus travaillant sur le projet GuildForge_Mobile. Il établit :
1.  Le **Protocole de Continuité** pour pallier la perte de mémoire entre les sessions.
2.  Le **Socle de Connaissances** indispensable à internaliser avant de commencer le travail.
3.  Le **Workflow de Validation** qui régit la collaboration avec l'utilisateur.

## II. Protocole de Continuité et Socle de Connaissances (Le "Briefing")

Pour garantir la cohérence et la rigueur, l'Agent Manus doit suivre cette procédure de démarrage et internaliser les documents critiques.

### II.1. Procédure de Démarrage de Session

L'Agent doit suivre ces étapes impérativement au début de chaque nouvelle session :

| Étape | Description | Justification |
| :--- | :--- | :--- |
| **1. Clonage/Synchronisation** | S'assurer que le dépôt local est à jour (`git pull`). | Garantit de travailler sur la dernière version. |
| **2. Génération Arborescence** | Exécuter le script de génération de l'arborescence (`generate_tree.py` ou similaire) et lire le fichier `ARBORESCENCE.md` généré. | Assure une perception globale de la structure du dépôt. |
| **3. Lecture du Socle** | **Lire et internaliser l'intégralité des documents listés dans la Section II.2.** | Garantit la cohérence philosophique et technique. |
| **4. Lecture de l'État** | Lire le fichier d'état de la session précédente (`agent_state.md`). | Reprise du contexte et du plan de travail. |
| **5. Reprise du Plan** | Reprendre le plan de travail (`plan` tool) à partir du `current_phase_id` stocké dans l'état. | Assure la continuité du travail. |
| **6. Validation du Plan** | **Impératif :** Soumettre le plan de travail complet à l'utilisateur pour validation avant d'exécuter la première action. | Contrôle qualité et alignement stratégique. |

### II.2. Socle de Connaissances Indispensable

L'Agent doit lire l'intégralité des documents suivants avant de commencer le travail.

| Catégorie | Document(s) Critique(s) | Rôle |
| :--- | :--- | :--- |
| **Philosophie** | `PMD/conventions_et_references/principes_fondamentaux.md` | Résume les choix architecturaux et de design (Mobile First, Structure Hybride, XML Source de Vérité). |
| **Conventions Générales** | `PMD/conventions_et_references/conventions_generales.md` | **Impératif :** Règles de formatage pour tous les documents, y compris les conventions de nommage des fichiers et dossiers. |
| **Conventions Techniques** | `PMD/conventions_et_references/conventions_techniques.md` | **Impératif :** Règles de typage strict, nommage du code GDScript, des assets et de la configuration. |
| **Prompts Spécialisés** | `PMD/prompts_archives/` | Dossier contenant les prompts spécifiques pour spécialiser l'agent dans une tâche précise. |

## III. Principes Fondamentaux de la Collaboration

1.  **Validation Explicite et Systématique :** Toutes les propositions (plans, livrables, bilans, modifications) doivent être soumises à l'utilisateur. L'Agent doit attendre une validation, une demande de modification ou un refus explicite avant de poursuivre.
2.  **Rôle de l'Agent :** Le rôle de l'Agent est défini par le prompt qui lui est attribué. L'Agent doit toujours se référer à son rôle actuel.
3.  **Persistance :** Tout travail validé doit être immédiatement poussé vers le dépôt distant (`git push`) pour assurer la continuité.

## IV. Workflow de Validation (Le Cycle de Travail)

Le travail de l'Agent Manus est divisé en cycles de travail, chacun commençant par la validation du plan et se terminant par la validation du rapport.

### IV.1. Démarrage du Cycle

| Étape | Description | Action de l'Agent Manus |
| :--- | :--- | :--- |
| **1. Auto-Critique (Début)** | L'agent réalise une phase d'auto-critique libre sur le projet en cours ou à venir. | L'agent soumet le rapport d'auto-critique à l'utilisateur. |
| **2. Proposition** | L'agent génère le plan de travail détaillé pour la session (basé sur le `plan` tool). | L'agent soumet le plan de travail à l'utilisateur. |
| **3. Validation** | L'utilisateur examine le plan et répond. | **L'agent attend la validation explicite** (Validation, Modification ou Refus). |

### IV.2. Milieu du Cycle (Validation Inter-Phases)

Pour garantir un contrôle qualité maximal, une validation est requise après chaque phase du plan de travail.

| Étape | Description | Action de l'Agent Manus |
| :--- | :--- | :--- |
| **1. Fin de Phase** | L'agent termine une phase du plan de travail (ex: Phase 5.1). | L'agent soumet le livrable de la phase à l'utilisateur. |
| **2. Vérification de Conformité** | L'agent vérifie que tous les fichiers/dossiers créés ou modifiés respectent les **Conventions Générales** et **Techniques**. | L'agent corrige les non-conformités avant la soumission. |
| **3. Auto-Critique (Milieu)** | L'agent réalise une phase d'auto-critique libre sur le travail accompli dans la phase. | L'agent soumet le rapport d'auto-critique à l'utilisateur. |
| **4. Validation** | L'utilisateur examine le livrable, la vérification de conformité et le rapport d'auto-critique. | **L'agent attend la validation explicite** (Validation, Modification ou Refus) avant de passer à la phase suivante. |

### IV.3. Fin du Cycle

| Étape | Description | Action de l'Agent Manus |
| :--- | :--- | :--- |
| **1. Rapport de Suivi** | L'agent compile un rapport exhaustif du travail effectué (fichiers modifiés, décisions prises, problèmes rencontrés). | L'agent soumet le rapport de suivi à l'utilisateur. |
| **2. Auto-Critique (Fin)** | L'agent réalise une phase d'auto-critique libre sur l'ensemble du travail de la session. | L'agent soumet le rapport d'auto-critique à l'utilisateur. |
| **3. Validation du Rapport** | L'utilisateur examine le rapport et l'auto-critique et répond. | **L'agent attend la validation explicite** avant de procéder au commit et push. |
| **4. Persistance** | Le travail est validé. | L'agent met à jour `agent_state.md`, effectue le `git commit` et le `git push` vers le dépôt distant. |
| **5. Fin de Session** | Le travail est sauvegardé. | L'agent soumet le bilan final et les tâches planifiées à l'utilisateur. |

## V. Procédure de Fin de Session (Le "Checkpoint")

La seule source de vérité pour l'état du projet est le dépôt GitHub. L'Agent doit s'assurer que tout le travail est persistant.

1.  **Mise à Jour de l'État :** Mettre à jour le contenu du fichier `agent_state.md` avec l'état actuel (phase, décisions, propositions).
2.  **Sauvegarde et Commit :** S'assurer que tous les fichiers modifiés (y compris `agent_state.md`) sont committés avec un message clair.
3.  **Persistance Distante :** Pousser les changements vers le dépôt distant (`git push`).
