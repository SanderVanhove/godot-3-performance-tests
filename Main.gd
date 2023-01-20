extends Node2D


func _ready() -> void:
	for child in get_children():
		printt("-----", child.name, "-----")
		child.run()
		print()

	get_tree().quit()


func do_something():
	4 - 5
