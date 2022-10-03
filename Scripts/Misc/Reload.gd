extends Node

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_end"):
		get_tree().reload_current_scene()
		resourceCounter.mat_1 = 0
		resourceCounter.money = 20
