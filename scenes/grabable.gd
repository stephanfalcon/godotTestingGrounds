extends RigidBody2D

var entered = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print('poop')
	if (entered):
		print('entered')
	pass


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	print(event)
	print('something happened')
	if (Input.is_action_just_pressed("click")):
		print('clicked')
		position = get_global_mouse_position()
	pass # Replace with function body.


func _on_mouse_entered() -> void:
	print('entered')
	entered = true
	pass # Replace with function body.
