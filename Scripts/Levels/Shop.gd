extends Node2D

var player = null


# Called when the node enters the scene tree for the first time.
func _ready():
	$Mat_1_Shop/Button.disabled = true




func _on_Mat_1_Shop_body_entered(body):
	if body.is_in_group("player"):
		
		$Mat_1_Shop/Button.disabled = false
		player = body
		

func _on_Button_pressed():
	if player != null:
		resourceCounter.money += resourceCounter.mat_1 * 2
		resourceCounter.mat_1 =0
		$coin.play()
		


func _on_Mat_1_Shop_body_exited(body):
	if body.is_in_group("player"):
		$Mat_1_Shop/Button.disabled = true
		player = null


func _on_Mat_2_body_entered(body):
	if body.is_in_group("player"):
		
		$Mat_1_Shop/Button.disabled = false
		
		player = body


func _on_Mat_2_body_exited(body):
	if body.is_in_group("player"):
		$Mat_1_Shop/Button.disabled = true
		player = null


func _on_Button_2_pressed():
	if player != null:
		resourceCounter.money += resourceCounter.mat_2 * 3
		resourceCounter.mat_2 =0
		$coin.play()


