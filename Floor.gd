class_name Floor

extends RefCounted


var rooms:Array[Room]
var halls:Array[Hall]
var startPos = Vector2i(20,20)
var canSpawn = true
func SpawnRooms():
	var room1 = Room.new(Vector2i(7,7),startPos)
	var prevRoom = room1
	rooms.append(room1)
	while(rooms.size() < 10):
		var dir = randi_range(0,3)
		if dir == 0:
			for i in range(rooms.size()):
				if rooms[i].position.x == prevRoom.position.x && rooms[i].position.y == prevRoom.position.y + 14:
					canSpawn = false
			if canSpawn == true:
				var room2 = Room.new(Vector2i(7,7),Vector2i(prevRoom.position.x,prevRoom.position.y + 14))
				prevRoom = room2
				rooms.append(room2)
				var startX = prevRoom.position.x + 3
				var startY = prevRoom.position.y - 7
				var startPos = Vector2i(startX,startY)
				var endX = room2.position.x + 3
				var endY = room2.position.y
				var endPos = Vector2i(endX,endY)
				var hall1 = Hall.new(startPos,endPos)
				halls.append(hall1)
		if dir == 1:
			for i in range(rooms.size()):
				if rooms[i].position.x == prevRoom.position.x && rooms[i].position.y == prevRoom.position.y - 14:
					canSpawn = false
			if canSpawn == true:
				var room3 = Room.new(Vector2i(7,7),Vector2i(prevRoom.position.x,prevRoom.position.y - 14))
				prevRoom = room3
				rooms.append(room3)
				var startX = prevRoom.position.x + 3
				var startY = prevRoom.position.y + 7
				var startPos = Vector2i(startX,startY)
				var endX = room3.position.x + 3
				var endY = room3.position.y
				var endPos = Vector2i(endX,endY)
				var hall2 = Hall.new(startPos,endPos)
				halls.append(hall2)
		if dir == 2:
			for i in range(rooms.size()):
				if rooms[i].position.x == prevRoom.position.x + 14 && rooms[i].position.y == prevRoom.position.y:
					canSpawn = false
			if canSpawn == true:
				var room4 = Room.new(Vector2i(7,7),Vector2i(prevRoom.position.x + 14,prevRoom.position.y))
				prevRoom = room4
				rooms.append(room4)
				var startX = prevRoom.position.x - 7
				var startY = prevRoom.position.y + 3
				var startPos = Vector2i(startX,startY)
				var endX = room4.position.x 
				var endY = room4.position.y + 3
				var endPos = Vector2i(endX,endY)
				var hall3 = Hall.new(startPos,endPos)
				halls.append(hall3)
		if dir == 3:
			for i in range(rooms.size()):
				if rooms[i].position.x == prevRoom.position.x - 14 && rooms[i].position.y == prevRoom.position.y:
					canSpawn = false
			if canSpawn == true:
				var room5 = Room.new(Vector2i(7,7),Vector2i(prevRoom.position.x - 14,prevRoom.position.y))
				prevRoom = room5
				rooms.append(room5)
				var startX = prevRoom.position.x + 7
				var startY = prevRoom.position.y + 3
				var startPos = Vector2i(startX,startY)
				var endX = room5.position.x 
				var endY = room5.position.y + 3
				var endPos = Vector2i(endX,endY)
				var hall4 = Hall.new(startPos,endPos)
				halls.append(hall4)
		canSpawn = true
	#var room2 = Room.new(Vector2i(5,6),Vector2i(2,23))
	#rooms.append(room2)
	
	

func OverLaps(room1,room2):
	pass
