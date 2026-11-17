extends CharacterBody2D


var SPEED = 300.0
var JUMP_VELOCITY = -400.0
var  max_angle_degrees = 90.0
var jump_count = 0  
var current_gravity_area: Area2D = null
var max_jump_count = 2

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	if is_on_floor():
		velocity += get_gravity() * delta
		jump_count = 0


	if Input.is_action_just_pressed("jump") and jump_count < 2:
		velocity.y = JUMP_VELOCITY
		jump_count += 1
		
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
	
	if Input.is_action_pressed("squish"):
		scale.x = .25
		SPEED = 150.0
	else:
		scale.x = .75
		SPEED = 300.0
	
	if Input.is_action_just_pressed("change_scene"):
		get_tree().change_scene_to_file("res://scene_2.tscn")
	if Input.is_action_just_pressed("reload_scene"):
		get_tree().reload_current_scene()
		Input.warp_mouse(Vector2(600,300))
	if Input.is_action_just_pressed("change_scene"):
		get_tree().change_scene_to_file("res://1st_scene.tscn")
	
	if Input.is_action_just_pressed("Tutorial_Level"):
		get_tree().change_scene_to_file("res://Tutorials.tscn")
	
	if Input.is_action_just_pressed("Level_1"):
		get_tree().change_scene_to_file("res://Level_1.tscn")
	
	
	
	
func _on_area_2d_body_entered(body: Node2D) -> void:
	MOTION_MODE_FLOATING 

	
	
		  
	
	
	
	


func _on_key_body_entered(body: Node2D) -> void:
	%LockedHatch.z_index -= 2
	%LockedHatch.position += Vector2(95,0)
	%Key.position.x -= 200.0
	
	
func _on_key_2_body_entered(body: Node2D) -> void:
	%LockedHatch2.z_index -= 2
	%LockedHatch2.position = Vector2(768,142.515)
	%Key2.position.y -= 200.0
