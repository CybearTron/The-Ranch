extends Node2D

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_select"):
		get_tree().change_scene("res://Scenes/Levels/World.tscn")
