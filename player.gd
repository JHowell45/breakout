extends CharacterBody2D

const SPEED = 700

func _physics_process(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		velocity = Vector2.LEFT * SPEED * delta
	elif Input.is_action_pressed("ui_right"):
		velocity = Vector2.RIGHT * SPEED * delta
	move_and_collide(velocity)
