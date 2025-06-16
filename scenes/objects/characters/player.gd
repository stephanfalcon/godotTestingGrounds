extends CharacterBody2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	#print('player position', global_position)
	if(Input.is_action_pressed("w")):
		position += Vector2(0,-1)
	if(Input.is_action_pressed("a")):
		position += Vector2(-1,0)
	if(Input.is_action_pressed("d")):
		position += Vector2(1,0)
	if(Input.is_action_pressed("s")):
		position += Vector2(0,1)
	
	pass
