extends StaticBody2D

var projectile = load('res://scenes/ball.tscn').instanciate()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	look_at(get_global_mouse_position())
	if(Input.is_action_just_pressed("click")):
		add_child(projectile)
		projectile.position = position
	pass
