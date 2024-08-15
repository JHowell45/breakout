extends Area2D

signal game_over

func _physics_process(delta):
	if Input.is_action_pressed("ui_accept"):
		get_tree().paused = false	

func _on_area_entered(area):
	game_over.emit()
