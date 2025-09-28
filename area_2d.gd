extends Area2D

func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.is_in_group("player"):
		print("Player reached NPC!")
		get_tree().change_scene_to_file("res://DecisionScreen.tscn")
