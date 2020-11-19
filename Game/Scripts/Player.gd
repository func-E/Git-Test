extends KinematicBody2D

const heightRange = 480
const speed = 600

func _physics_process(delta):
	var direction = 0
	if Input.is_action_pressed("up"):
		direction -= 1
	if Input.is_action_pressed("down"):
		direction += 1
	
	position.y += direction * speed * delta
	
	position.y = clamp(position.y, 540 - heightRange, 540 + heightRange)
