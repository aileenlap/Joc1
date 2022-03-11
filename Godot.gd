extends Sprite


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
	position += direccio * velocitat * delta
	if Input.is_action_pressed("mou dreta"):
		direccio = Vector2(1, 0)
	if Input.is_action_pressed("mou esquerra"):
		direccio = Vector2(-1, 0)
	
#	position += velocitat * delta
#	print(position)
#	if position.x >= 1024 or position.x <= 0:
#		velocitat[0] = -velocitat[0]
#	if position.y <= 0 or position.y >= 600:
#		velocitat[1] = -velocitat[1]

