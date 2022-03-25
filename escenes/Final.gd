extends Area2D

var velocitat = Vector2.ZERO

func _physics_process(delta):
	pass
	anima(velocitat)

func anima(velocitat : Vector2):
	var animacio : AnimatedSprite = $AnimatedSprite 
	animacio.play('general')
