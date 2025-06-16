extends Area2D

var ball = preload("res://scenes/ball.tscn")

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	
	if(Input.is_action_just_pressed("click")):
		print("click")
		var sBall = ball.instantiate()
		sBall.position = get_global_mouse_position()
		get_parent().add_child(sBall)
