extends Node2D

onready var _tween: Tween = $Tween


func run():
	var num_times: int = 10000

	PerformanceTimer.reset_time()
	for n in num_times:
		_tween.remove_all()
		_tween.interpolate_property(self, "modulate:a", 1, 0, .5)
	PerformanceTimer.print_time("tween node")

	PerformanceTimer.reset_time()
	for n in num_times:
		create_tween().tween_property(self, "modulate:a", 0.0, .5).from(1.0)
	PerformanceTimer.print_time("scene tree tween one line")

	var scene_tree_tween: SceneTreeTween
	PerformanceTimer.reset_time()
	for n in num_times:
		scene_tree_tween = create_tween()
		scene_tree_tween.tween_property(self, "modulate:a", 0.0, .5).from(1.0)
	PerformanceTimer.print_time("scene tree tween in var")
