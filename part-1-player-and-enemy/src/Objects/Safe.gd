tool
extends Area2D

onready var anim_player: AnimationPlayer = $AnimationPlayer
#export var next_scene: PackedScene
export var next_scene: = "res://src/Levels/SafeLevel.tscn"


func _on_Safe_body_entered(body: Node) -> void:
	teleport()
	

func  _get_configuration_warning() -> String:
	return "The next scene property can't be empty" if not next_scene else ""



func teleport() -> void:
	anim_player.play("Fade In")
	yield(anim_player, "animation_finished")
	get_tree().change_scene(next_scene)


