extends CharacterBody2D

const SPEED = 1000

func _ready():
	var player = get_node("/root/Game/Player")
	velocity = global_position.direction_to(player.global_position) * SPEED

func _physics_process(delta):
	#print("BALL: %s" % velocity)
	if get_slide_collision_count():
		print(get_slide_collision_count())
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
