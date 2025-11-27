# Intégration Musique Godot - GuildForge Mobile

**Auteur :** IA Manus
**Date :** 06 Octobre 2025
**Version :** 1.0 (Après migration et consolidation)
**Tags :** [audio, musique, Godot, intégration, technique]

---

## 1. Introduction

Ce document décrit les méthodes et les meilleures pratiques pour l'intégration de la musique dans le moteur de jeu Godot pour GuildForge Mobile. L'objectif est d'assurer une lecture fluide, une gestion dynamique des pistes et une optimisation des performances sur les appareils mobiles.

## 2. Formats et Optimisation

*   **Format de Fichier :** Utiliser des formats compressés optimisés pour le jeu (ex: OGG Vorbis pour la musique de fond, WAV pour les boucles courtes si nécessaire).
*   **Taille des Fichiers :** Maintenir les fichiers musicaux à une taille minimale pour réduire l'empreinte mémoire et le temps de chargement.
*   **Bouclage :** S'assurer que les pistes musicales sont conçues pour boucler de manière transparente.

## 3. Gestion Dynamique de la Musique

Godot permet une gestion flexible de la musique via des nœuds `AudioStreamPlayer`.

*   **Nœuds `AudioStreamPlayer` :** Utiliser des nœuds `AudioStreamPlayer` dédiés pour la musique de fond, les thèmes de combat, etc.
*   **Bus Audio :** Configurer des bus audio pour la musique afin de permettre un contrôle global du volume, des effets (ex: réverbération subtile) et du mixage.
*   **Transitions :** Implémenter des transitions douces entre les pistes musicales (crossfade) lors des changements d'état du jeu (ex: passage de l'exploration au combat).
*   **Variations :** Utiliser des variations de pistes ou des couches musicales pour s'adapter à l'intensité du jeu (ex: ajout d'instruments lors d'un événement important).

## 4. Intégration dans Godot Engine

### 4.1. Structure des Scènes

*   Placer les nœuds `AudioStreamPlayer` dans des scènes dédiées ou des singletons pour une gestion centralisée.
*   Utiliser des scripts pour contrôler la lecture, la pause, le volume et les transitions des pistes.

### 4.2. Code Exemple (GDScript)

```gdscript
# Exemple de script pour un singleton de gestion musicale

extends Node

var current_music_player: AudioStreamPlayer = null

func play_music(music_path: String, volume_db: float = 0.0, loop: bool = true):
    if current_music_player:
        current_music_player.stop()
        current_music_player.queue_free()

    var new_music_player = AudioStreamPlayer.new()
    add_child(new_music_player)
    current_music_player = new_music_player

    var stream = load(music_path)
    if stream:
        current_music_player.stream = stream
        current_music_player.volume_db = volume_db
        current_music_player.autoplay = true
        current_music_player.bus = "Music" # Assurez-vous que ce bus existe
        current_music_player.play()
        # Pour le bouclage, Godot gère cela via les propriétés du Stream (importation)
    else:
        print("Erreur: Impossible de charger la musique: ", music_path)

func stop_music():
    if current_music_player:
        current_music_player.stop()
        current_music_player.queue_free()
        current_music_player = null

func set_music_volume(volume_db: float):
    if current_music_player:
        current_music_player.volume_db = volume_db
```

## 5. Références

*   [Musique Générale](../README.md)
*   [Thèmes Musicaux](./themes_musicaux.md)
*   [Documentation Godot sur l'Audio](https://docs.godotengine.org/en/stable/tutorials/audio/audio_buses.html)
*   [Glossaire du Projet GuildForge Mobile](../../verite_unique/glossaire.md)

---

*Note : Ce document a été consolidé à partir des informations pertinentes sur l'intégration musicale dans Godot trouvées dans l'ancienne documentation. Les doublons ont été supprimés et le contenu a été réorganisé pour une meilleure clarté et cohérence.*
