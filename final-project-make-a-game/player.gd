extends CharacterBody2D


var SPEED = 300.0
var JUMP_VELOCITY = -400.0
var  max_angle_degrees = 90.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	if Input.is_action_pressed("flatten"):
		skew = deg_to_rad(75.0)
		SPEED = 150.0
	else:
		skew = 0.0
		SPEED = 300.0
	
	
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
		
	
	
	
	
