extends StaticBody2D
@onready var animated_sprite_2D = $BACKTOTOP


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animated_sprite_2D.play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("player"):
		area.get_parent().respawn()
