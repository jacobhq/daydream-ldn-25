extends Control

func _ready():
	$SacrificeButton.pressed.connect(_on_sacrifice_pressed)
	$DieButton.pressed.connect(_on_die_pressed)

func _on_sacrifice_pressed():
	print("Player chose to sacrifice!")
	# 
	get_tree().change_scene_to_file("res://prison.tscn")

func _on_die_pressed():
	print("Player chose to die!")

	get_tree().change_scene_to_file("res://dungeon scene/dungeon.tscn")
