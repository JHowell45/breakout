extends ColorRect


func _ready():
	process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	get_tree().paused = true
	


func _on_button_pressed():
	get_tree().paused = false
	queue_free()
