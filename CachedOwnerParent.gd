extends Node2D

onready var runner_node: Node2D = $Node2D/RunnerNode

func run():
	runner_node.run()


func do_something():
	4 - 5
