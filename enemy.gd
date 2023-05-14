extends CharacterBody2D

var speed = 70
var player_instance = null

func _on_pathfinding_body_entered(body):
	if body.name == 'monkey':
		player_instance = body 
		
		
		
func _process(_delta):
	if player_instance:
		velocity = (player_instance.global_position - global_position).normalized() * speed  
		move_and_slide()
	


func _on_battle_area_entered(area):
	if area.name == 'battle_area':
		get_tree().change_scene_to_file("res://chopper.tscn")



func _on_pathfinding_body_exited(body):
	if body.name == 'monkey':
		player_instance = null 
