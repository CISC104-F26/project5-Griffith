extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func _on_body_entered(body: Node2D) -> void:
	$BigPurpleButton.position = Vector2(-89, 107)
	get_node("../Interior_Barriers/CursorHatch").position = Vector2(49,-299)
	get_node("../Interior_Barriers/CursorHatchBarrier").position = Vector2(49,-299)
	get_node("../Resetting_Barriers/CursorHatchArea").position = Vector2(49,-299)
	
	
func _on_body_exited(body: Node2D) -> void:
	$BigPurpleButton.position = Vector2(-89, 97)
	get_node("../Interior_Barriers/CursorHatch").position = Vector2(-167,-299)
	get_node("../Interior_Barriers/CursorHatchBarrier").position = Vector2(-167,-299)
	get_node("../Resetting_Barriers/CursorHatchArea").position = Vector2(-167,-299)
	
	
	
