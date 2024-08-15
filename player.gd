extends CharacterBody2D

const SPEED = 30000

func _physics_process(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		velocity = Vector2.LEFT * SPEED * delta
	elif Input.is_action_pressed("ui_right"):
		velocity = Vector2.RIGHT * SPEED * delta
	print("PLAYER %s" % velocity)
	move_and_slide()
