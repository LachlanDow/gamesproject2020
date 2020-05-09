extends ColorRect

signal fade_finshed

func fade_in():
	$AnimationPlayer.play("fadeIn")
	


func _on_AnimationPlayer_animation_finished(anim_name: String) -> void:
	emit_signal("fade_finshed")
