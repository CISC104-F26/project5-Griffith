extends CharacterBody2D



func _physics_process(delta: float) -> void:

	global_position = get_global_mouse_position()
	
	if Input.is_action_pressed("phase"):
		z_index = -1
		set_collision_layer(0)
	else:
		z_index = 1
		set_collision_layer(1)
	
	if Input.is_action_pressed("quicksilver"):
		Engine.time_scale = 0.5
	else:
		Engine.time_scale = 1
	
	if Input.is_action_pressed("combine"):
		pass
	
	if Input.is_action_just_pressed("change_scene"):
		get_tree().change_scene_to_file("res://scene_2.tscn")
	if Input.is_action_just_pressed("reload_scene"):
		get_tree().reload_current_scene()
		Input.warp_mouse(Vector2(600,300))
	if Input.is_action_just_pressed("change_scene"):
		get_tree().change_scene_to_file("res://1st_scene.tscn")
 
	

	
	#var rotation_input = Input.get_axis("rotate_left", "rotate_right")
	#if rotation_input > 0 and rotation_degrees >= max_angle_degrees:
		#rotation_input = 0
	#elif rotation_input < 0 and rotation_degrees <= -max_angle_degrees:
		#rotation_input = 0 
		
	
	
	
	


func _on_resetting_barriers_body_entered(body: Node2D) -> void:
	Input.warp_mouse(Vector2(1000,500))
