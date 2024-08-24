extends Area2D

signal extra_ball

const SPEED = 300

const BALL = preload("res://ball.tscn")

func _physics_process(delta):
	global_position += Vector2.DOWN * SPEED * delta


func _on_body_entered(body):
	queue_free()
	var ball = BALL.instantiate()
	ball.global_position = global_position
	get_parent().add_child(ball)
	Globals.ball_count += 1
	print("CREATE BALL")
