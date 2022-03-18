extends KinematicBody2D


var velocitat_base = 200
var velocitat = Vector2.ZERO
var acceleracio = Vector2.DOWN * 980
var salt = Vector2.UP * 400
var salts_disp = 1

func _physics_process(delta):
	
	velocitat.x = 0
	
	if Input.is_action_pressed("mou dreta"):
		velocitat += Vector2.RIGHT * velocitat_base
	if Input.is_action_pressed("mou esquerra"):
		velocitat += Vector2.LEFT * velocitat_base
	if Input.is_action_just_pressed("mou adalt") and salts_disp > 0:
		velocitat.y = salt.y
		salts_disp -= 1
	if is_on_floor():
		salts_disp = 1
	
	velocitat += acceleracio * delta
	velocitat = move_and_slide(velocitat, Vector2.UP)
	
#	if positon.y < -600:
#		position = Vector2(301, 387)
