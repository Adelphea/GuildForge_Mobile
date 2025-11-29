# RecipeDef.gd - Généré automatiquement
class_name RecipeDef
extends Def

@export var addsHediff: Variant = null
@export var allowMixingIngredients: bool = false
@export var anesthetize: Variant = null
@export var appliedOnFixedBodyPartGroups: Array[Resource] = []
@export var appliedOnFixedBodyParts: Array[Resource] = []
@export var autoStripCorpses: Array[Resource] = []
@export var conceptLearned: Variant = null
@export var deathOnFailedSurgeryChance: float = 0.0
@export var defName: String = ""
@export var defaultIngredientFilter: Variant = null
@export var descriptionHyperlinks: Array[Resource] = []
@export var developmentalStageFilter: Variant = null
@export var displayPriority: int = 0
@export var dontShowIfAnyIngredientMissing: Variant = null
@export var effectWorking: Variant = null
@export var efficiencyStat: Variant = null
@export var fixedIngredientFilter: Variant = null
@export var forceHiddenSpecialFilters: Array[Resource] = []
@export var hideBodyPartNames: Array[Resource] = []
@export var ignoreIngredientCountTakeEntireStacks: int = 0
@export var incompatibleWithHediffTags: Array[Resource] = []
@export var ingredientValueGetterClass: Array[Resource] = []
@export var ingredients: Array[Resource] = []
@export var interruptIfIngredientIsRotting: Variant = null
@export var isViolation: bool = false
@export var jobString: Variant = null
@export var products: Array[Resource] = []
@export var recipeUsers: Array[Resource] = []
@export var removesHediff: Variant = null
@export var requiredGiverWorkType: Variant = null
@export var researchPrerequisite: Variant = null
@export var skillRequirements: Array[Resource] = []
@export var smeltingWorkAmount: int = 0
@export var soundWorking: Variant = null
@export var specialProducts: Array[Resource] = []
@export var successfullyRemovedHediffMessage: Variant = null
@export var surgeryIgnoreEnvironment: Variant = null
@export var surgeryOutcomeEffect: Variant = null
@export var surgerySuccessChanceFactor: float = 0.0
@export var targetCountAdjustment: int = 0
@export var targetsBodyPart: Variant = null
@export var uiIconThing: Variant = null
@export var unfinishedThingDef: String = ""
@export var workAmount: int = 0
@export var workSkill: Variant = null
@export var workSpeedStat: Variant = null
@export var workerClass: Array[Resource] = []
@export var workerCounterClass: int = 0

# --- Méthodes ---
func validate() -> void:
    # Validation spécifique à ce DefType
    if def_name.is_empty():
        push_error(f"[{deftype}] def_name est vide.")
    # TODO: Ajouter la logique de validation spécifique ici
    pass
