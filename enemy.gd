extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("player"):
		GlobalDirt.lives -= 1
		area.get_parent().respawn()
		if GlobalDirt.lives == 0:
			get_tree().change_scene_to_file("res://You_died.tscn")
