extends KinematicBody2D

var velo = Vector2()
export (int) var speed = 200



func _physics_process(delta):
	$Mat_1.text ="Material_1 = "+  str(resourceCounter.mat_1)
	$Mat_2.text ="Material_2 = "+  str(resourceCounter.mat_2)
	$Money.text = "Money = " + str(resourceCounter.money)
	velo = Vector2.ZERO
	
	if Input.is_action_pressed("ui_left"):
		velo.x -= 10
		$Sprite.frame = 3
	
	if Input.is_action_pressed("ui_right"):
		velo.x += 10
		$Sprite.frame = 2
	
	if Input.is_action_pressed("ui_up"):
		velo.y -= 10
		$Sprite.frame = 1
		
	
	if Input.is_action_pressed("ui_down"):
		velo.y += 10
		
		$Sprite.frame = 0
	
	if velo != Vector2.ZERO:
		velo = velo.normalized() * speed
		
	move_and_slide(velo)
