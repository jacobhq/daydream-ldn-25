extends Node2D
@onready var area: Area2D = $Area2D

func _ready():
	area.body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.is_in_group("player"):
		print("Player encountered NPC!")
		get_tree().change_scene_to_file("res://DecisionScreen.tscn")
