extends StaticBody2D

#var projectile = load('res://scenes/ball.tscn').instanciate()
#var projectile = preload("res://scenes/ball.tscn")
var projectile = preload("res://scenes/objects/projectile.tscn")
@onready var marker_2d: Marker2D = $Marker2D
var velocity = Vector2.RIGHT
@onready var sprite_2d: Sprite2D = $Sprite2D

signal shoot(bullet,direction,location)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print('marker position', marker_2d.global_position)
	look_at(get_global_mouse_position())

	if(Input.is_action_just_pressed("click")):
		shoot.emit(projectile,rotation,marker_2d.global_position)

		
	pass
