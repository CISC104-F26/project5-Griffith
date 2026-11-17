extends Button
var sliding_doors
var doors = [%MovingNode, %MovingNode2, %MovingNode3, %MovingNode4, %MovingNode5, %MovingNode6, %MovingNode7]
var item = MeshInstance2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func on_index_changed():
	item = doors[sliding_doors]
	print(item)
func increase_index():
	sliding_doors += 1
	on_index_changed()
	
	
