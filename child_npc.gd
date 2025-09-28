extends Node2D

func _ready():
	# Ensure the sprite receives mouse input
	$Sprite2D.mouse_filter = Control.MOUSE_FILTER_PASS
	# Connect the gui_input signal to a function on this node
  

# Function called when the sprite is clicked
func _on_sprite_gui_input(event):
	if event is InputEventMouseButton and event.pressed:
		print("NPC clicked!")  # debug
		get_tree().change_scene_to_file("res://DecisionScreen.tscn")
