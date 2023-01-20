extends Node2D


func run():
	var num_times: int = 1000000

	PerformanceTimer.reset_time()
	for n in num_times:
		2.0 * (3.0 * 5.0)
	PerformanceTimer.print_time("direct")

	PerformanceTimer.reset_time()
	for n in num_times:
		var x = 3.0 * 5.0
		2.0 * x
	PerformanceTimer.print_time("create var")

	PerformanceTimer.reset_time()
	for n in num_times:
		var x: float = 3.0 * 5.0
		2.0 * x
	PerformanceTimer.print_time("typed var")

	var x
	PerformanceTimer.reset_time()
	for n in num_times:
		x = 3.0 * 5.0
		2.0 * x
	PerformanceTimer.print_time("existing var")

	PerformanceTimer.reset_time()
	for n in num_times:
		2.0 * a_func()
	PerformanceTimer.print_time("func")

	PerformanceTimer.reset_time()
	for n in num_times:
		2.0 * a_typed_func()
	PerformanceTimer.print_time("typed func")

	PerformanceTimer.reset_time()
	for n in num_times:
		var y = a_func()
		2.0 * y
	PerformanceTimer.print_time("var + func")


func a_func():
	return 3.0 * 5.0


func a_typed_func() -> float:
	return 3.0 * 5.0
