# Glossaire du Projet GuildForge Mobile

**Auteur :** Adelphea ; Manus IA
**Date :** 18 Octobre 2025
**Version :** 1
**Tags :** [documentation, general, glossaire, terminologie, guildforge, mobile]

Ce glossaire fournit des définitions claires et concises des termes clés utilisés dans le cadre du projet GuildForge Mobile. Il vise à faciliter la compréhension de la documentation pour tous les contributeurs et à assurer une terminologie cohérente. Il sera enrichi de manière itérative avec les termes rencontrés au fur et à mesure de la réorganisation de la documentation.

---

**APK (Android Package Kit) :** Le format de fichier de package utilisé par le système d'exploitation Android pour la distribution et l'installation d'applications mobiles.

**Assets :** Tous les éléments non-code du jeu, tels que les graphiques (sprites, textures), l'audio (effets sonores, musique).

**Biome :** Une zone géographique distincte caractérisée par son climat, sa végétation et sa faune spécifiques. Dans GuildForge Mobile, les biomes influencent les ressources disponibles, les défis environnementaux et les types de créatures ou d'événements rencontrés.

**Colon :** Un personnage non-joueur (PNJ) sous le contrôle du joueur dans le jeu. Chaque colon possède des compétences, des traits, des besoins et une humeur qui influencent son comportement et sa productivité. Ce terme est le terme officiel et standardisé pour désigner les habitants de la colonie.

**Colonie :** L'établissement ou le groupe de Colons contrôlé par le joueur. Ce terme est le terme officiel et standardisé pour désigner l'entité du joueur.

**Custom Resource (CR) :** Format standard de Godot pour la gestion des données de jeu, remplaçant progressivement les fichiers XML. Elle est la base de toutes les `Custom Resources` de définition.

**DataManager :** Gestionnaire centralisé responsable du chargement, du stockage et de l'accès à toutes les définitions et données du jeu. Utilise le pattern Singleton pour garantir un accès global cohérent.

**Def (Definition) :** Terme hérité de RimWorld désignant une définition XML d'un élément de jeu (par exemple, `ThingDef` pour un objet, `RecipeDef` pour une recette, `FactionDef` pour une faction). Dans GuildForge, ces définitions sont des sources d'inspiration pour la création de `Types` Godot (par exemple, `ThingType` pour un objet, `RecipeType` pour une recette, `FactionType` pour une faction). Ces `Types` Godot sont des Custom Resources ou des structures GDScript.

**GameManager :** Gestionnaire principal du jeu qui coordonne tous les systèmes et gère l'état global (MENU, LOADING, PLAYING, PAUSED). Utilise le pattern Singleton et contrôle le cycle de vie de la partie.

**GameType :** Classe héritant de `BaseDefinition`, servant de classe de base pour les définitions de jeu génériques dans GuildForge.

**GDD (Game Design Document) :** Un document détaillé qui décrit tous les aspects du design d'un jeu, y compris le gameplay, l'histoire, les personnages, l'interface utilisateur, l'art et le son.

**GDScript :** Le langage de script natif et léger de Godot Engine, inspiré de Python. Il est privilégié pour le développement de la logique de jeu dans GuildForge.

**Godot Engine :** Un moteur de jeu open-source et multiplateforme. Il est utilisé dans ce projet pour son éditeur Android natif et sa légèreté, permettant un développement mobile-only.

**IA (Intelligence Artificielle) :** Dans le contexte de ce projet, fait référence aux outils d'IA générative utilisés pour la production de code (GDScript) et de contenu (documentation) afin d'accélérer le développement. L'IA générative se concentre sur le code, le contenu et la documentation, et n'est plus utilisée pour la création d'assets visuels et sonores.

**ItemType :** Classe héritant de `BaseDefinition`, spécialisée pour les définitions d'objets/items du jeu. Inclut des propriétés spécifiques comme `item_type`, `stack_size`, `base_value` et `weight`.

**Lore :** L'ensemble des éléments narratifs, historiques et mythologiques qui constituent l'univers du jeu.

**Mécaniques de Jeu :** Les règles et systèmes qui définissent comment le joueur interagit avec le jeu et comment le jeu réagit aux actions du joueur (par exemple, gestion des ressources, combat, artisanat).

**Médiéval :** Relatif à la période du Moyen Âge (environ du Ve au XVe siècle). Dans le contexte de GuildForge Mobile, cela désigne un univers **médiéval**, sans éléments fantastiques ni de science-fiction. L'interprétation du médiéval se veut large, permettant une liberté créative et une exploration des mystères de l'époque, tout en évitant le fantastique et la science-fiction. Les mécaniques de jeu, l'esthétique et la narration sont ancrées dans les technologies, les savoir-faire et la culture de cette époque.

**Mobile-Only Development :** Une contrainte de développement où le projet est entièrement réalisé sur un appareil mobile (ici, un Samsung Galaxy A54 5G) sans l'aide d'un ordinateur de bureau ou de services cloud nécessitant un PC.

**Optimisation :** Le processus d'ajustement du code, des assets et des systèmes du jeu pour améliorer les performances (vitesse, fluidité) et réduire la consommation de ressources (RAM, batterie), particulièrement crucial pour le développement mobile.

**Profiling :** L'analyse des performances d'un programme pour identifier les goulots d'étranglement et les zones nécessitant une optimisation.

**Raid :** Un événement hostile où des entités ennemies (humains, animaux sauvages, etc.) attaquent la colonie du joueur. Les raids peuvent varier en intensité et en composition, nécessitant des stratégies de défense adaptées.

**Refactoring :** Le processus de restructuration du code existant sans changer son comportement externe, dans le but d'améliorer sa lisibilité, sa maintenabilité et ses performances.

**RimWorld-like :** Décrit un jeu qui partage des caractéristiques de gameplay avec le jeu "RimWorld", notamment la gestion de colonie, la survie, la narration émergente et la complexité des interactions entre les personnages et l'environnement.

**Roadmap :** Plan de développement détaillé qui définit les étapes, les fonctionnalités et les objectifs pour chaque version du jeu, de la v0.1 à la v1.0.

**Samsung Galaxy A54 5G :** L'appareil mobile spécifique utilisé comme plateforme de développement et cible pour le projet GuildForge.

**Singleton Pattern :** Modèle de conception qui garantit qu'une classe n'a qu'une seule instance et fournit un point d'accès global à cette instance. Utilisé pour les gestionnaires principaux (GameManager, DataManager).

**Sprites :** Des images 2D utilisées dans les jeux vidéo pour représenter des personnages, des objets ou des éléments d'interface.

**Textures :** Des images appliquées sur des surfaces 3D (ou 2D) pour leur donner de la couleur, du motif et du détail.

**ThingType :** Classe héritant de `BaseDefinition`, spécialisée pour les définitions de "choses" génériques du jeu (bâtiments, objets, structures). Inclut une propriété `parent_name` pour gérer les relations hiérarchiques.

**UI/UX (User Interface / User Experience) :** L'interface utilisateur (UI) fait référence à la manière dont le joueur interagit avec le jeu (boutons, menus). L'expérience utilisateur (UX) concerne la sensation générale et la facilité d'utilisation du jeu.

**Versioning :** Le processus de gestion des différentes versions d'un projet, permettant de suivre les modifications, de revenir à des états antérieurs et de collaborer efficacement (par exemple, avec Git).

**Vertical Slice :** Une section complète et jouable du jeu qui inclut toutes les couches de fonctionnalités (gameplay, graphismes, audio, UI) pour une partie spécifique du jeu, utilisée pour valider les concepts et l'architecture.

**WorldData :** Structure de données créée par le WorldGenerator qui contient les informations sur les tuiles du monde, la taille de la carte et le point d'apparition des colons.

**WorldGenerator :** Système responsable de la génération procédurale des mondes de jeu. Crée des cartes avec différents types de terrain et détermine les emplacements constructibles et les points d'apparition.

**XML/MD :** Fichiers XML originaux convertis en Markdown pour consultation et analyse, situés dans `xml_md_documentation/raw_xml_content`.

### Termes liés à la Progression

**Apprentissage :** Désigne le système d'apprentissage des compétences des colons.

**Arbre de recherche :** Désigne le menu où sont archivés tous les projets de recherche. C'est dans ce menu que l'on peut envoyer un projet de recherche à la table de recherche lorsqu'elle est construite.

**Projet de recherche :** Désigne des blocs, des packs à débloquer dans l'arbre de recherche (ex: semis d'arbre: permet aux colons de semer des arbres dans les champs/débloque les semis d'arbre comme ressource pour les zones agricoles).

**Recherche :** Désigne la méthode principale pour débloquer des projets de recherche dans l'arbre de recherche.

**Table de recherche :** Désigne le bâtiment de production permettant au colon assigné de faire des recherches en respectant le temps de recherche du projet de recherche pour parvenir à le débloquer (ex: semis d'Arbre requiert 400 secondes pour la débloquer).




**DefBase :** Classe de base pour toutes les définitions de jeu (Custom Resources) dans Godot, contenant des propriétés partagées comme `defName`, `label` et `description`.

**ItemDef :** Une Custom Resource spécifique pour la définition des objets/items du jeu, héritant de `DefBase`.

**XMLParser :** Classe de Godot utilisée pour lire et analyser les fichiers XML, essentielle pour le processus de migration des données.

