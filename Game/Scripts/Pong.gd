extends KinematicBody2D

signal PlayerScore
signal Player1Score

var velocity = Vector2(300,-300)

func _physics_process(delta):
	
	var collision = move_and_collide(velocity * delta)
	
	if position.y < 20:
		position.y = 20
		velocity.y = abs(velocity.y)
		$BumpSound.play()
	elif position.y > 1060:
		position.y = 1060
		velocity.y = -abs(velocity.y)
		$BumpSound.play()
	
	if collision:
		if velocity.x > 0:
			velocity.x = -abs(velocity.x)
			$BumpSound.play()
		elif velocity.x < 0:
			velocity.x = abs(velocity.x)
			$BumpSound.play()
	
	if position.x > 1920:
		position = Vector2(960,540)
		emit_signal("PlayerScore")
	elif position.x < 0:
		position = Vector2(960,540)
		emit_signal("Player1Score")
