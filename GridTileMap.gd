extends TileMap


var usedTiles:Array[Vector2]
var reset = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func renderGrid(tiles:Array[Tile]):
	for i in range (tiles.size()):
#		for j in range (usedTiles.size()):
#			if tiles[i].position.x == usedTiles[j].x && tiles[i].position.y == usedTiles[j].y:
#				print("i")
#				reset = true
#	if reset == false:
#		for k in range(tiles.size()):
#		var l = Vector2(tiles[k].position.x,tiles[k].position.y)
		set_cell(0,tiles[i].position,2,Vector2(0,0))
			#usedTiles.append(l)

func renderFloor(floor):
	for room in floor.rooms:
		renderGrid(room.tiles)
	for hall in floor.halls:
		renderGrid((hall.tiles))
