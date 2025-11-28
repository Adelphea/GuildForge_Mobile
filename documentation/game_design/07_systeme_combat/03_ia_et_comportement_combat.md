# IA et Comportement en Combat

Ce document détaillera l'intelligence artificielle des ennemis et des colons en combat, leurs comportements tactiques, leurs réactions aux menaces et leurs priorités.



## IA des Ennemis (Migré de systeme_combat/ia_ennemis.md)

### Introduction

Ce document décrit le système d'Intelligence Artificielle (IA) des ennemis dans GuildForge Mobile. L'objectif est de créer des adversaires crédibles et stimulants, dont le comportement tactique varie en fonction de la situation, du type d'ennemi et de l'environnement. Une IA bien conçue est essentielle pour offrir une expérience de combat engageante et imprévisible.

### Principes Généraux de l'IA Ennemie

*   **Comportement Adaptatif :** Les ennemis doivent adapter leurs actions en fonction de l'état de la colonie, de la présence de colons, de la force des défenses et de leur propre état (blessures, moral).
*   **Diversité Tactique :** Différents types d'ennemis (bandits, animaux sauvages, créatures corrompues) doivent présenter des schémas de comportement distincts.
*   **Prise de Décision :** L'IA doit être capable de prendre des décisions basées sur des objectifs clairs (attaquer, piller, fuir, contourner les défenses).

### Mécaniques Détaillées

#### Types de Comportements

L'IA des ennemis peut être catégorisée en plusieurs types de comportements :

*   **Agression Directe :** Les ennemis chargent directement les colons ou les structures les plus proches, cherchant à infliger un maximum de dégâts (ex: animaux enragés, certains bandits).
*   **Tactique de Contournement :** Les ennemis évaluent les défenses et tentent de trouver des points faibles ou des chemins non défendus pour atteindre leurs objectifs (ex: bandits expérimentés, créatures intelligentes).
*   **Pillage :** Certains ennemis se concentrent sur le vol de ressources plutôt que sur la destruction ou l'élimination des colons. Ils peuvent fuir une fois leur butin acquis (ex: petits groupes de pillards).
*   **Harassement :** Des ennemis peuvent adopter une tactique de harcèlement, attaquant puis se retirant pour affaiblir les défenses avant une attaque majeure.

#### Facteurs Influents sur l'IA

Plusieurs facteurs modulent le comportement de l'IA :

*   **Moral :** Le moral des ennemis peut baisser s'ils subissent trop de pertes, les poussant à fuir ou à se rendre.
*   **Blessures :** Les ennemis blessés peuvent devenir moins efficaces, chercher à se soigner ou à se retirer du combat.
*   **Nombre et Force des Colons :** L'IA évalue la force de la défense de la colonie et adapte son agressivité en conséquence.
*   **Type d'Ennemi :** Chaque type d'ennemi a des préférences comportementales prédéfinies (ex: les loups chassent les proies isolées, les bandits attaquent en groupe).
*   **Environnement :** Le terrain (forêts, montagnes, rivières) peut être utilisé par l'IA pour se cacher, tendre des embuscades ou ralentir les poursuivants.

#### Objectifs de l'IA

Les ennemis ont des objectifs prioritaires qui guident leurs actions :

*   **Détruire les Défenses :** Cible les murs, les portes et les pièges pour ouvrir un chemin vers la colonie.
*   **Attaquer les Colons :** Priorise les colons les plus faibles, les soignants ou les combattants les plus dangereux.
*   **Piller les Ressources :** Vise les entrepôts, les fermes ou les zones de production.
*   **Capturer des Colons :** Certains ennemis peuvent tenter de capturer des colons pour les rançonner ou les asservir.

