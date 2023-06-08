class_name Room

extends RefCounted

var tiles:Array[Tile]
var size:Vector2i
var position:Vector2i


func _init(size,position):
	self.size = size
	self.position = position
	
	
	for x in range(size.x):
		for y in range(size.y):
			var t = Tile.new(Vector2(position.x+x,position.y+y))
			tiles.append(t)
