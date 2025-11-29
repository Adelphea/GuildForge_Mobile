# Rapport des Coquilles Vides Non Fonctionnelles (Types Complexes)

Ce tableau liste les types complexes qui ont été générés comme des classes vides (par fidélité à la source de données) mais qui sont susceptibles de nécessiter des propriétés pour la sérialisation des données XML.

**Statut Actuel :** Ces classes sont vides. Si elles sont utilisées dans un fichier XML, les données ne seront pas chargées correctement dans Godot.

| Type Complexe | Propriétés Probablement Nécessaires (Basées sur le C#) | Type GDScript Probable | Justification (Pour Validation) |
| :--- | :--- | :--- | :--- |
| **StatModifier** | stat, value | String, float | Définit une modification de statistique (ex: MarketValue +10%). |
| **ThingDefCountClass** | thingDef, count | String, int | Utilisé pour lister un objet et sa quantité (ex: 10x WoodLog). |
| **DamageMultiplier** | damageDef, multiplier | String, float | Utilisé pour appliquer un multiplicateur de dégâts à un type spécifique. |
| **Tool** | label, capacities, power, cooldownTime | String, Array[String], float, float | Définit un outil de combat ou de travail. |
| **HediffStage** | label, minSeverity, statOffsets, capMods | String, float, Array[StatModifier], Array[PawnCapacityModifier] | Définit les effets d'un stade d'Hediff. |
| **HediffGiver** | hediff, chance, partsToAffect | String, float, Array[String] | Définit la manière dont un Hediff est appliqué. |
| **VerbProperties** | verbClass, defaultProjectile, range, burstShotCount | String, String, float, int | Définit les propriétés d'une attaque (verbe). |
| **CombatLogRules** | rules | Array[String] | Définit les règles de journalisation des combats. |
| **NameMaker** | rules | Array[String] | Définit les règles de génération de noms. |
| **Effecter** | children | Array[EffecterChild] | Définit un effet visuel ou sonore complexe. |
| **Fleck** | graphicData, speed, lifeTime | GraphicData, float, float | Définit un petit effet visuel (particule). |

**Action Recommandée :** Examiner le code C# ou la documentation de RimWorld pour confirmer les propriétés listées ci-dessus. Une fois confirmées, elles peuvent être ajoutées au script de génération pour rendre ces classes fonctionnelles.
