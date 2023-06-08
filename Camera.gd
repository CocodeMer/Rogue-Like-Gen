extends Camera2D
@export var speed:float = 50
@export var zoomSpeed:float = 2
@export var maxZoom:float = 5
@export var minZoom:float = 1

var zoomNum = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("Down"):
		move_local_y(speed*delta)
	if Input.is_action_pressed("Up"):
		move_local_y(-speed*delta)
	if Input.is_action_pressed("Left"):
		move_local_x(-speed*delta)
	if Input.is_action_pressed("Right"):
		move_local_x(speed*delta)
	if Input.is_action_pressed("Zoom In"):
		if zoomNum > minZoom:
			zoom += Vector2(zoomSpeed*delta,zoomSpeed*delta)
			zoomNum -= 0.3
	if Input.is_action_pressed("Zoom Out"):
		if zoomNum < maxZoom:
			zoom += Vector2(-zoomSpeed*delta,-zoomSpeed*delta)
			zoomNum += 0.3
