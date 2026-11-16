extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if Input.is_action_pressed("combine"):
		#gravity = -9999.0
	#else:
		#gravity = 980.0
		
		
	global_position = get_global_mouse_position()
	if Input.is_action_pressed("combine"):
		$Field.scale = Vector2(40, 40)
	else:
		$Field.scale = Vector2(0.1, 0.1)
	
