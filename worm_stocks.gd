extends TextEdit


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = "Worm stocks: " + str(GlobalDirt.worm_stocks)
	if Input.is_action_just_pressed("STOCKS"):
		


func _on_timer_timeout() -> void:
	if randf() < 0.5:
		GlobalDirt.worm_stocks += 10
	else:
		GlobalDirt.worm_stocks -= 10
		
		
