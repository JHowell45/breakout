extends CharacterBody2D

const SPEED = 400

func _ready():
	#var player = preload("res://player.tscn")
	var player = get_node("/root/Game/Player")
	print(player.global_position)
	velocity = global_position.direction_to(player.global_position) * SPEED
	move_and_slide()

func _physics_process(delta):
	print("BALL: %s" % velocity)
	if get_slide_collision_count():
		print(get_slide_collision_count())
	move_and_slide()
