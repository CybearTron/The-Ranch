extends Node2D

func _ready():
	var pen_Borgin = load("res://Scenes/Pens/Borgin_Pen.tscn")
	var pen_Kolpol = load("res://Scenes/Pens/Kolpol_Pen.tscn")
	var pen_1 = pen_Borgin.instance()
	var pen_2 = pen_Kolpol.instance()
	var pen_3 = pen_Borgin.instance()
	var pen_4 = pen_Kolpol.instance()
	var pen_5 = pen_Borgin.instance()
	var pen_6 = pen_Kolpol.instance()
	pen_1.position = $pens/Pen_1.position
	pen_2.position = $pens/Pen_2.position
	pen_3.position = $pens/Pen_3.position
	pen_4.position = $pens/Pen_4.position
	pen_5.position = $pens/Pen_5.position
	pen_6.position = $pens/Pen_6.position
	add_child(pen_1)
	add_child(pen_2)
	add_child(pen_3)
	add_child(pen_4)
	add_child(pen_5)
	add_child(pen_6)


func _physics_process(delta):
	if resourceCounter.popup == true:
		
		pass
	
	
