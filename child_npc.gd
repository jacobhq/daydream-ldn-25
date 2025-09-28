extends Node2D

  

@onready var area = $Area2D

func _ready():
	# connect signal to this instance
	area.body_entered.connect(_on_body_entered)
	add_to_group("player")

func _on_body_entered(body):
	if body.is_in_group("player"):
		print("Player reached NPC!")
		# Switch to your DecisionScreen scene
		get_tree().change_scene_to_file("res://DecisionScreen.tscn")
