extends KinematicBody2D

var velocity = Vector2(300,-300)

func _physics_process(delta):
	
	move_and_collide(velocity * delta)
	
	if position.y < 20:
		position.y = 20
		velocity.y = abs(velocity.y)
	elif position.y > 1060:
		position.y = 1060
		velocity.y = -abs(velocity.y)
