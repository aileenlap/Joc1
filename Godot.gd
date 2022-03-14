extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var velocitat : int = 300
var direccio = Vector2(0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
#	rotation_degrees = 90
	position = Vector2(100, 200)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	direccio = Vector2.ZERO

	if Input.is_action_pressed("mou dreta"):
		direccio += Vector2.RIGHT
	if Input.is_action_pressed("mou esquerra"):
		direccio += Vector2.LEFT
	if Input.is_action_pressed("mou abaix"):
		direccio += Vector2.DOWN
	if Input.is_action_pressed("mou adalt"):
		direccio += Vector2.UP
	
	position += direccio.normalized() * velocitat * delta
	direccio = Vector2(0,0)
	
	
#	position += velocitat * delta
#	print(position)
#	if position.x >= 1024 or position.x <= 0:
#		direccio = -direccio
#	if position.y <= 0 or position.y >= 600:
#		direccio = -direccio



func _on_Personatge_area_entered(area):
	modulate = Color(1,0,0)
