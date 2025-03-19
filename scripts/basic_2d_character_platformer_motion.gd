# Godot 4+

extends CharacterBody2D

const SPEED = 80
const GRAVITY = 500
const JUMPFORCE = -300

func _physics_process(delta):
	
	if Input.is_action_pressed("right"):
		self.velocity.x += SPEED
		$Sprite.flip_h = false
		$Sprite.play("walk")
	if Input.is_action_pressed("left"):
		self.velocity.x -= SPEED
		$Sprite.flip_h = true
		$Sprite.play("walk")
	else:
		$Sprite.play("idle")
		
	if not is_on_floor():
		$Sprite.play("air")
	
	self.velocity.y += GRAVITY * delta
		
	if Input.is_action_pressed("jump") and is_on_floor():
		self.velocity.y += JUMPFORCE
	
	self.velocity.x = lerp(self.velocity.x, 0.0, 0.1)  # Gradually slow down	
	move_and_slide()
	
	
