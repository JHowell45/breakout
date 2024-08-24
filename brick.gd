extends StaticBody2D

const POWER_UP = preload("res://power_up.tscn")

func crack():
	queue_free()
	if randi() % 4 == 0:
		var power_up = POWER_UP.instantiate()
		power_up.global_position = global_position
		get_node("/root/Game").add_child(power_up)
