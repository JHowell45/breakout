extends StaticBody2D

const POWER_UP = preload("res://power_up.tscn")

func crack():
	queue_free()
	if randi() % 4 == 3 || true:
		var power_up = POWER_UP.instantiate()
		power_up.global_position = global_position
		get_tree().root.get_child(0).add_child(power_up)
		add_to_group("Balls")
