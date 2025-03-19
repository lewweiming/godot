extends CharacterBody2D

var v = Vector2(0,0)

func _physics_process(delta):
	
	if Input.is_action_pressed("right"):
		v.x = 100
	if Input.is_action_pressed("left"):
		v.x = -100
	
	v.x = lerp(v.x, 0.0, 0.1)  # Gradually slow down	
	move_and_collide(v * delta)
	
