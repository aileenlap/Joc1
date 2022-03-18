extends KinematicBody2D


var velocitat_base = 200
var velocitat = Vector2.ZERO
var acceleracio = Vector2.DOWN * 98

func _physics_process(delta):
	
	velocitat.x = 0
	
	if Input.is_action_pressed("mou dreta"):
		velocitat += Vector2.RIGHT * velocitat_base
	if Input.is_action_pressed("mou esquerra"):
		velocitat += Vector2.LEFT * velocitat_base
	
	velocitat += acceleracio * delta
	velocitat = move_and_slide(velocitat)
