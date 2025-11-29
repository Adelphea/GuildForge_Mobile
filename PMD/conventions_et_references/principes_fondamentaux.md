# Principes Fondamentaux du Projet GuildForge Mobile (Manifeste)

**Chemin du Fichier :** `PMD/conventions_et_references/principes_fondamentaux.md`
**Statut :** Finalisé

## I. Le Manifeste

Ce document établit les 10 principes directeurs qui guident toutes les décisions de conception, d'architecture et de développement.

| # | Principe | Domaine | Implication Clé |
| :--- | :--- | :--- | :--- |
| 1 | **Android Only & Performance** | Mobile | L'optimisation pour Android est la priorité absolue. |
| 2 | **Fidélité à la Source & Émergence** | Game Design | Rester fidèle à l'esprit RimWorld ; la complexité émerge de règles simples. |
| 3 | **Clarté et Maintenabilité** | Qualité | Le code et la documentation doivent être clairs, prévisibles et faciles à maintenir. |
| 4 | **Source de Vérité Unique (SSoT)** | Workflow | Chaque information critique n'existe qu'à un seul endroit (GDD, TDD, PMD). |
| 5 | **Source de Vérité Finale (Godot)** | Données | Les XML sont transitoires ; les `.tres` typés sont la Source de Vérité finale. |
| 6 | **Structure Hybride & Composition** | Architecture | Utilisation de la Composition (CR Godot) pour la flexibilité et l'évolutivité. |
| 7 | **Pipeline Unidirectionnel** | Workflow | Le flux de données est strictement **XML -> CR Godot**. |
| 8 | **Typage Fort et Tests** | Qualité | Le typage strict et les tests unitaires sont obligatoires pour les systèmes critiques. |
| 9 | **Contrôle Qualité Continu** | Workflow | Validation inter-phases et vérification de conformité obligatoire. |
| 10 | **Documentation d'abord** | Workflow | La documentation (GDD/TDD) doit précéder et valider l'implémentation. |

---
*Ce document est finalisé et fait partie du Socle de Connaissances.*
