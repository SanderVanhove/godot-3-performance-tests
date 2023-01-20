extends Node2D


func run():
	var num_times: int = 10000000

	PerformanceTimer.reset_time()
	for n in num_times:
		int(2.0)
	PerformanceTimer.print_time("cast float to int")

	PerformanceTimer.reset_time()
	for n in num_times:
		floor(2.0)
	PerformanceTimer.print_time("floor float")

	PerformanceTimer.reset_time()
	for n in num_times:
		ceil(2.0)
	PerformanceTimer.print_time("ceil float")

	PerformanceTimer.reset_time()
	for n in num_times:
		position
	PerformanceTimer.print_time("position")

	PerformanceTimer.reset_time()
	for n in num_times:
		global_position
	PerformanceTimer.print_time("global_position")

	PerformanceTimer.reset_time()
	for n in num_times:
		is_equal_approx(4, 5)
	PerformanceTimer.print_time("is_equal_approx")

	PerformanceTimer.reset_time()
	for n in num_times:
		abs(abs(4) - abs(5)) < .1
	PerformanceTimer.print_time("abs(abs(4) - abs(5)) < .1")
