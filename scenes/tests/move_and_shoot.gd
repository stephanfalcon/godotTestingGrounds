extends Node2D


func _on_gun_shoot(projectile,direction,location):
	var sprojectile = projectile.instantiate()
	add_child(sprojectile)
	sprojectile.rotation = direction
	sprojectile.position = location
	sprojectile.velocity = sprojectile.velocity.rotated(direction)
