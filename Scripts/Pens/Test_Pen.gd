extends Node2D

var critter = load("res://Scenes/Critters/Test_Critter.tscn")
var is_critter = false

var increment = 1


var crit = critter.instance()
func _on_Spawn_1_pressed():
	if resourceCounter.money >= 20:
		resourceCounter.money -=20
		crit.position = $Spawn_1/Position2D.position
		$Spawn_1.queue_free()
		add_child(crit)
		is_critter = true
		$Collection_Timer.start()
	

func _physics_process(delta):
	
	if crit.chonk == 5:
		crit.queue_free()
		add_child(crit)
		crit.chonk = 0

	
	
	if resourceCounter.popup == true and Input.is_action_just_pressed("ui_select"):
		resourceCounter.mat_1 += crit.mat_1
		crit.mat_1= 0
	
	if is_critter == false:
		$Chonkaton.disabled == true
	else:
		$Chonkaton.disabled = false
		
	$Materials.text = "Mats= "+str(crit.mat_1) 

func _on_Area2D_body_entered(body):
	if body.is_in_group("player") and is_critter == true:
		resourceCounter.popup = true
		
		
		
		

func _on_Area2D_body_exited(body):
	if body.is_in_group("player"):
		resourceCounter.popup = false


func _on_Collection_Timer_timeout():
	
	crit.mat_1 +=increment
	$Collection_Timer.start()


func _on_Chonkaton_pressed():
	if resourceCounter.money >= increment +49:
		resourceCounter.money -= increment +49
		crit.chonk += 1
		increment = crit.chonk + increment
