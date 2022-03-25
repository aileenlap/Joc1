extends Area2D


func _ready():
	pass 

var velocitat = Vector2.ZERO

func _physics_process(delta):
	anima(velocitat)

func anima(velocitat: Vector2):
	var animacio : AnimatedSprite = $AnimatedSprite 
	animacio.play('viu')
		

