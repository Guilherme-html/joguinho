extends CharacterBody2D

var current_animation = "idle"
var speed = 100
var angle = 0 

func _process(_delta):
	current_animation = "idle" # <----- Changed here
	var input_dir = Input.get_vector("left", "right", "up", "down")
	if input_dir.length() != 0:
		angle = input_dir.angle() / (PI/4)
		angle = wrapi(int(angle), 0, 8)
		current_animation = "run"
	velocity = input_dir * speed
	move_and_slide()
	$AnimatedSprite2D.play(current_animation + str(angle))
