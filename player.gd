extends CharacterBody2D
@export var speed: float = 200.0  #pixels per second
func _physics_process(delta: float) -> void:
	var input_vector = Vector2.ZERO
	
	if Input.is_action_pressed("ui_right"):
		input_vector.x += 1
	if Input.is_action_pressed("ui_left"):
		input_vector.x -= 1
	if Input.is_action_pressed("ui_down"):
		input_vector.y += 1
	if Input.is_action_pressed("ui_up"):
		input_vector.y -= 1
	
	velocity = input_vector.normalized() * speed
	move_and_slide()
	
func _process(delta: float) -> void:
	print("hello")
		# countdown timer
		
