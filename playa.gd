extends CharacterBody2D


const SPEED = 300.0
var start_position = Vector2(0,0)



func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * 0.0007

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("food"):
		area.queue_free()
		
