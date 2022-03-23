extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var velocitat = Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _physics_process(delta):
	anima(velocitat)
	
func anima(velocitat : Vector2):
	anima.play('general')

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
