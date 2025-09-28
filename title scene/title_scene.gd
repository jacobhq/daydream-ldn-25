extends Control


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://dungeon scene/dungeon.tscn")

func _on_option_pressed() -> void:
	print("opt")

func _on_exit_pressed() -> void:
	get_tree().quit()
