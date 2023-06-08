extends Node



# Called when the node enters the scene tree for the first time.
func _ready():
	var floor1 = Floor.new()
	floor1.SpawnRooms()
	$TileMap.renderFloor(floor1)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
