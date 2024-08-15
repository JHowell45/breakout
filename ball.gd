extends CharacterBody2D

const SPEED = 700

func _ready():
	var player = get_node("/root/Game/Player")
	velocity = global_position.direction_to(player.global_position) * SPEED

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		var node = collision.get_collider()
		if node.has_method("crack"):
			node.crack()
