extends AnimatedSprite2D
@onready var animated_sprite_2D = $"."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	animated_sprite_2D.play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("STOCKS"):
		if randf() < 0.5:
			show()
			GlobalDirt.worm_stocks /= 2
			animated_sprite_2D.play("BIG LOSS")
			await get_tree().create_timer(2).timeout
			hide()
		else:
			show()
			GlobalDirt.worm_stocks *= 2
			animated_sprite_2D.play("BIG WIN")
			await get_tree().create_timer(2).timeout
			hide()
