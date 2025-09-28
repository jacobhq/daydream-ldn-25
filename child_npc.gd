
extends Node2D

func _ready():
	# Ensure the sprite receives mouse input
	$Sprite2D.mouse_filter = Control.MOUSE_FILTER_PASS
	# Connect the gui_input signal to a function on this node
	$Sprite2D.connect("ui_accept", self, "_on_Sprite_gui_input")

# This function is called when the sprite is clicked
func _on_Sprite_gui_input(event):
	if event is InputEventMouseButton and event.pressed:
		print("NPC clicked!")
		# Go to your DecisionScreen scene
		get_tree().change_scene_to_file("res://DecisionScreen.tscn")
