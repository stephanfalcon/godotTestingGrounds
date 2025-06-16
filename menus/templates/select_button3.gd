extends Control

@onready var button: Button = $Button
@onready var label: Label = $Label

# Called when the node enters the scene tree for the first time.
var load
var change
func _ready() -> void:
	#print(load)
	load = self.get_meta('load')
	change = str('res://scenes/tests/',load,'.tscn')
	print(str('res://scenes/tests/',load,'.tscn'))
	print(change)
	label.text = load
	#print(self.get_meta('load'))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	print('click')
	print(str('res://scenes/',load,'.tscn'))
	get_tree().change_scene_to_file(change)
	pass # Replace with function body.
