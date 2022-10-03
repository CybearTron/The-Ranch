extends Node2D

var critter = load("res://Scenes/Critters/Kolpol.tscn")
var is_critter = false

var increment = 1


var crit = critter.instance()
func _on_Spawn_1_pressed():
	if resourceCounter.money >= 30:
		resourceCounter.money -=30
		crit.position = $Spawn_1/Position2D.position
		$Spawn_1.queue_free()
		add_child(crit)
		is_critter = true
		$Collection_Timer.start()
	

func _physics_process(delta):
	
	$name.text = "Kolpol Pen"

	
	
	if crit.popup == true and Input.is_action_just_pressed("ui_select"):
		resourceCounter.mat_2 += crit.mat_2
		crit.mat_2= 0
	
	if is_critter == false:
		$Chonkaton.disabled == true
	else:
		$Chonkaton.disabled = false
		
		
		
	$Materials.text = "Collected: "+str(crit.mat_2) 

func _on_Area2D_body_entered(body):
	if body.is_in_group("player") and is_critter == true:
		crit.popup = true
		
		
		
		

func _on_Area2D_body_exited(body):
	if body.is_in_group("player"):
		crit.popup = false


func _on_Collection_Timer_timeout():
	
	crit.mat_2 +=increment
	$Collection_Timer.start()


func _on_Chonkaton_pressed():
	if resourceCounter.money >= increment*2 +51:
		resourceCounter.money -= increment*2 +51
		crit.chonk += 1
		increment = crit.chonk + increment
