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
		print(collision)
		print("VELOCITY: %s" % velocity)
		print("ANGLE: %s" % collision.get_angle())
		print("COLLIDER VELOCITY: %s" % collision.get_collider_velocity())
		var bounce = velocity.bounce(collision.get_collider().position)
		print("BOUNCE %s" % bounce)
		velocity = velocity.bounce(collision.get_collider().position)
