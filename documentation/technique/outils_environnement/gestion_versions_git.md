# Gestion des Versions avec Git pour GuildForge Mobile

**Auteur :** Manus AI
**Date :** 11 Octobre 2025
**Version :** 1.0
**Tags :** [documentation, technique, git, versionnement, mobile, workflow]

Ce document décrit les principes et les bonnes pratiques pour la gestion des versions du projet GuildForge Mobile à l'aide de Git. Il est adapté aux spécificités d'un développement sur appareil mobile (Samsung Galaxy A54 5G) et vise à assurer la cohérence du code, la collaboration (même en solo) et la traçabilité des modifications.

---

## 1. Introduction à Git et au Contrôle de Version

Git est un système de contrôle de version distribué (DVCS) essentiel pour le suivi des modifications de code, la collaboration et la gestion des différentes versions d'un projet. Même pour un développeur solo, Git offre des avantages significatifs en termes de sécurité des données, de capacité à revenir en arrière et d'expérimentation sans risque.

## 2. Configuration Initiale de Git sur Mobile (via Termux)

Comme détaillé dans le document [Configuration de l'Environnement de Développement Mobile](./configuration_environnement_mobile.md), Git est installé et configuré via Termux.

1.  **Installation de Termux :** Installer Termux depuis le Google Play Store ou F-Droid.
2.  **Mise à Jour des Paquets :** `pkg update && pkg upgrade`
3.  **Installation de Git :** `pkg install git`
4.  **Configuration de Git :**
    ```bash
    git config --global user.name "Votre Nom"
    git config --global user.email "votre.email@example.com"
    ```
5.  **Clonage du Dépôt :** Naviguer vers le répertoire de stockage du projet et cloner le dépôt Git distant :
    ```bash
    git clone [URL_DE_VOTRE_DEPOT_GIT]
    ```

## 3. Workflow Git Recommandé

Pour un projet solo, un workflow simple mais efficace est recommandé, basé sur les principes du Git Flow simplifié ou du GitHub Flow.

### 3.1. Branche Principale (`main` ou `master`)

La branche `main` (ou `master`) doit toujours contenir une version stable et fonctionnelle du jeu. Les commits directs sur cette branche sont à éviter. Elle sert de référence pour les versions publiées ou les builds stables.

### 3.2. Branches de Fonctionnalités (`feature/nom-de-la-fonctionnalite`)

Pour chaque nouvelle fonctionnalité, correction de bug ou amélioration, créer une nouvelle branche à partir de `main`.

```bash
git checkout main
git pull origin main # S'assurer d'être à jour
git checkout -b feature/nouvelle-fonctionnalite
```

Travailler sur cette branche, effectuer des commits réguliers avec des messages clairs.

### 3.3. Commits et Messages de Commit

*   **Fréquence :** Effectuer des commits petits et fréquents. Chaque commit devrait représenter une unité de travail logique et atomique.
*   **Messages :** Utiliser des messages de commit clairs et concis, décrivant la nature de la modification. Un format courant est `Type: Description` (ex: `feat: Ajout du système d'inventaire`, `fix: Correction du bug de collision`).

### 3.4. Fusion des Branches (`Merge` ou `Rebase`)

Une fois la fonctionnalité terminée et testée, fusionner la branche de fonctionnalité dans `main`.

```bash
git checkout main
git pull origin main # Mettre à jour main avant la fusion
git merge feature/nouvelle-fonctionnalite --no-ff # Utiliser --no-ff pour conserver l'historique des branches
# Ou git rebase main sur feature/nouvelle-fonctionnalite puis fast-forward merge
git push origin main
```

Il est recommandé de faire des `pull requests` (même si c'est pour soi-même) pour réviser le code avant la fusion, si un outil comme GitHub est utilisé.

## 4. Gestion des Conflits

Les conflits de fusion peuvent survenir, surtout si plusieurs modifications sont apportées en parallèle. Les résoudre manuellement en éditant les fichiers conflictuels et en marquant la résolution avec `git add`.

## 5. Sauvegarde et Synchronisation (Remote Repository)

Il est impératif de synchroniser régulièrement le dépôt local avec un dépôt distant (par exemple, GitHub, GitLab, Bitbucket) pour la sauvegarde et l'accès depuis d'autres appareils.

*   **`git push` :** Envoyer les commits locaux vers le dépôt distant.
*   **`git pull` :** Récupérer les modifications du dépôt distant et les fusionner dans la branche locale.

## 6. Bonnes Pratiques

*   **Fichier `.gitignore` :** Utiliser un fichier `.gitignore` pour exclure les fichiers générés automatiquement, les fichiers temporaires, les dossiers de build et les assets volumineux qui ne devraient pas être versionnés (par exemple, le dossier `.godot/`, les fichiers `.import/`).
*   **Commits Atomiques :** Chaque commit doit résoudre un problème ou ajouter une fonctionnalité spécifique.
*   **Test avant Commit :** S'assurer que le code est fonctionnel et ne contient pas de bugs majeurs avant de commiter.
*   **Sauvegardes Régulières :** `git push` fréquemment pour sauvegarder le travail sur le dépôt distant.

## 7. Références

*   [Documentation Officielle Git](https://git-scm.com/doc)
*   [ProGit Book](https://git-scm.com/book/en/v2)
*   [Configuration de l'Environnement de Développement Mobile](./configuration_environnement_mobile.md)

