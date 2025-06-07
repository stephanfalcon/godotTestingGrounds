extends Control

@onready var select_button: Control = $"."


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(select_button.get_node('button'))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
