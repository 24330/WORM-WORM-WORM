extends Node2D

var player_scene = preload("res://playa.gd")
var playa = null

func _process(_delta):
	if playa == null:
		var new_obj = player_scene.Instantiate()
		new_obj.position = position
		get_parent().add_child(new_obj)
		playa = new_obj
