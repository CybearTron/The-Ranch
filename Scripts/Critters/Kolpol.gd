extends Node2D

var chonk = 1
var mat_2 = 0
var popup = false
onready var  sprite = $Sprite


func _physics_process(delta):
	$CHONK.text = str(chonk)
	if chonk == 1:
		$Sprite.scale = Vector2(0.4,0.4)
	elif chonk == 2:
		$Sprite.scale = Vector2(0.5,0.5)
	elif chonk == 3:
		$Sprite.scale = Vector2(0.6,0.6)
	elif chonk == 4:
		$Sprite.scale = Vector2(0.7,0.7)
	elif chonk == 5:
		$Sprite.scale = Vector2(0.8,0.8)
	elif chonk >= 6:
		$Sprite.scale = Vector2(0.9,0.9)
