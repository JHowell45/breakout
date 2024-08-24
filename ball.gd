extends CharacterBody2D

signal game_over

const SPEED = 700

func _ready():
	var player = get_node("/root/Game/Player")
	velocity = global_position.direction_to(player.global_position) * SPEED
	var game_over_zone = get_node("/root/Game/GameOverZone")
	game_over_zone.body_entered.connect(_on_game_over_zone_body_entered)

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		var node = collision.get_collider()
		if node.has_method("crack"):
			node.crack()

func _on_game_over_zone_body_entered(body):
	if (body.has_method("move_and_slide") and body.get_rid() == get_rid()):
		queue_free()
		game_over.emit()
		
