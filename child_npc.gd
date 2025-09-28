extends Node2D

@onready var area: Area2D = $Area2D

func _ready():
	# Connect the Area2D signal to the function
	area.body_entered.connect(_on_area_body_entered)

func _on_area_body_entered(body: Node) -> void:
	# Only react if the player enters
	if body.is_in_group("player"):
		print("Player reached NPC!")
		# Switch to your DecisionScreen scene
		get_tree().change_scene_to_file("res://DecisionScreen.tscn")
