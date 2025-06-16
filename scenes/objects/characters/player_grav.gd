extends CharacterBody2D
var gravity = 2500
var jump_speed = -1000
var run_speed = 350

func get_input():
	velocity.x = 0
	var right = Input.is_action_pressed("d")
	var left = Input.is_action_pressed("a")
	var jump = Input.is_action_pressed("w")
	
	if is_on_floor() and jump:
		velocity.y = jump_speed
	if right:
		velocity.x += run_speed
	if left:
		velocity.x -= run_speed

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	get_input()
	move_and_slide()
	pass
