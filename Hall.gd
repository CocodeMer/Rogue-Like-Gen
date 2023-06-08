class_name Hall

extends RefCounted

var tiles:Array[Tile]
var startPosition:Vector2i
var endPosition:Vector2i

func _init(startPos,endPos):
	self.startPosition = startPos
	self.endPosition = endPos
	
	var xDis = startPosition.x - endPosition.x
	var yDis = startPosition.y - endPosition.y
	
	if xDis == 0:
		#print(yDis)
		if yDis < 0:
			yDis *= -1
		for y in range(yDis):
			
			var t = Tile.new(Vector2(startPosition.x,startPosition.y + y))
			tiles.append(t)
			
	if yDis == 0:
		#print(xDis)
		if xDis < 0:
			xDis *= -1
		for x in range(xDis):
			
			var t = Tile.new(Vector2(startPosition.x + x,startPosition.y))
			
			tiles.append(t)
