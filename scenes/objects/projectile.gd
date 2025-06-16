extends Area2D

var velocity = Vector2.RIGHT
var fall = 1

func _physics_process(delta):
	position += velocity * delta * 200
	velocity.y += delta * fall 
