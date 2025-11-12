extends CharacterBody2D

var direction : Vector2 = Vector2(1,1)
var speed: int = 150

func _physics_process(delta: float) -> void:
	direction = Input.get_vector("left", "right", "up", "down")
	
	if Input.is_action_just_pressed("jump"):
		print("jump")	

	velocity = direction * speed
	move_and_slide()