extends Node2D

var chonk = 1
var mat_1 = 0
var popup
onready var  sprite = $Sprite


func _physics_process(delta):
	$CHONK.text = str(chonk)
	if chonk == 1:
		sprite.scale = Vector2(0.5,0.5)
	elif chonk == 2:
		sprite.scale = Vector2(0.6,0.6)
	elif chonk == 3:
		sprite.scale = Vector2(0.7,0.7)
	elif chonk == 4:
		sprite.scale = Vector2(0.8,0.8)
	elif chonk == 5:
		sprite.scale = Vector2(0.9,0.9)
	elif chonk >= 6:
		sprite.scale = Vector2(1,1)
