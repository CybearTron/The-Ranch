extends KinematicBody2D

var chonk = 1
var mat_1 = 1


func _physics_process(delta):
	$CHONK.text = str(chonk)
