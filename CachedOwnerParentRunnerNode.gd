extends Node2D


func run():
	var num_times: int = 100000

	var cached_owner = owner
	var cached_parent = get_parent()

	PerformanceTimer.reset_time()
	for n in num_times:
		get_parent().do_something()
	PerformanceTimer.print_time("get_parent()")

	PerformanceTimer.reset_time()
	for n in num_times:
		cached_parent.do_something()
	PerformanceTimer.print_time("cached_parent")

	PerformanceTimer.reset_time()
	for n in num_times:
		owner.do_something()
	PerformanceTimer.print_time("owner")

	PerformanceTimer.reset_time()
	for n in num_times:
		cached_owner.do_something()
	PerformanceTimer.print_time("cached_owner")
