extends CharacterBody2D
@export var speed: float = 200.0  #pixels per second
@export var start_time: float = 60.0

var time_left: float
@onready var timer_label: Label = $TimerLabel
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
	if time_left > 0:
		time_left -= delta
	else:
		time_left = 0
		print("Time's up")
		
	timer_label.text = str(int(time_left))
	
		
		
		
		
	

		
