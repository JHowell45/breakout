extends Area2D

signal extra_ball

const SPEED = 300

const BALL = preload("res://ball.tscn")

func _physics_process(delta):
	global_position += Vector2.DOWN * SPEED * delta


func _on_body_entered(body):
	queue_free()
	Globals.ball_count += 1
	var ball = BALL.instantiate()
	ball.global_position = global_position
	var game_over = get_node("/root/Game/GameOverSplashScreen")
	ball.game_over.connect(game_over._on_ball_game_over)
	get_parent().add_child(ball)
