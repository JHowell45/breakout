extends ColorRect


func _ready():
	process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	
func _on_button_pressed():
	get_tree().reload_current_scene()
	Globals.ball_count = 1

func _on_ball_game_over():
	Globals.ball_count -= 1
	if Globals.ball_count <= 0:
		get_tree().paused = true
		show()
