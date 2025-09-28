extends CharacterBody2D
@export var speed: float = 200.0  #pixels per second
@export var start_time: float = 60.0



const GRAVITY = 200.0
const WALK_SPEED = 200

var time_left: float

@onready var timer_label: Label = $TimerLabel
@onready var screen_notifier: VisibleOnScreenNotifier2D = $VisibleOnScreenNotifier2D

func _ready():
	time_left = start_time
	screen_notifier.connect("screen_exited", Callable(self, "_on_screen_exited"))
	add_to_group("player")

	
func _physics_process(delta: float) -> void:	
	if Input.is_action_pressed("ui_right"):
		velocity.x = WALK_SPEED
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -WALK_SPEED
	else:
		velocity.x = 0
	
	if Input.is_action_pressed("ui_down"):
		velocity.y = WALK_SPEED
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -WALK_SPEED
	else:
		velocity.y += delta * GRAVITY
	
	move_and_slide()
	
func _process(delta: float) -> void:
	if time_left > 0:
		time_left -= delta
	else:
		time_left = 0
	
	timer_label.text = str(int(time_left))
	
func _on_screen_exited() -> void:
	get_tree().change_scene_to_file("res://title scene/title_scene.tscn")
