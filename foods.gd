extends Area2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("player"):
		GlobalDirt.dirt_dere -= 1
		queue_free()
		if GlobalDirt.scene == 1 and  GlobalDirt.dirt_dere == 0:
			get_tree().change_scene_to_file("res://Family Guy.tscn")
			GlobalDirt.dirt_dere = 300
			GlobalDirt.scene += 1
		if GlobalDirt.scene == 2 and GlobalDirt.dirt_dere == 0:
			get_tree().change_scene_to_file("res://You_win.tscn")
			GlobalDirt.dirt_dere = 300
			GlobalDirt.scene += 1
