extends Node2D

var plObj := preload("res://obj.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _input(event):
	
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		
		spawn_object(event.position)
		
func spawn_object(position: Vector2):
		var obj = plObj.instantiate()
		obj.global_position = position
		get_tree().current_scene.add_child(obj)
