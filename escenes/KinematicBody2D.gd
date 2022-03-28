extends KinematicBody2D


var velocitat_base = 300
var velocitat = Vector2.ZERO
var acceleracio = Vector2.DOWN * 980
var salt = Vector2.UP * 500
var salts_disp = 1
var hit = false

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
	

	if position.y >= 1000:
		position = Vector2(201, 399)


	anima(velocitat)
	
func anima(velocitat: Vector2):
	var animacio : AnimatedSprite = $AnimatedSprite
	if not hit:
		if velocitat.x > 0:
			animacio.flip_h = false
			animacio.play('camina')
		elif velocitat.x < 0:
			animacio.flip_h = true
			animacio.play('camina')
		
		if abs(velocitat.x) < 0.1:
			animacio.play('quiet')
			
		if velocitat.y < -1:
			animacio.play('salta')
		
		if Input.is_action_pressed("mou abaix") and is_on_floor():
			animacio.play('agacha')
		
		
		



func _on_Porta_body_entered(body):
	get_tree().change_scene("res://escenes/Fons2.tscn")
	

func _on_Enemic_body_entered(body):
	var animacio : AnimatedSprite = $AnimatedSprite
	animacio.play('hit')
	hit = true
	
	
func _on_Port_body_entered(body):
	get_tree().change_scene("res://escenes/Fons3.tscn")
	position = Vector2(439, -232)


func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == 'hit':
		hit = false
		position = Vector2(201, 399)
