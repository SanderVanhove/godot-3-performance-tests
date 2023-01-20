extends Node


func run():
	var num_times: int = 1000000

	var array: Array = []
	for i in 2000:
		array.append(rand_range(-100, 100))

	PerformanceTimer.reset_time()
	for n in num_times:
		array.size()
	PerformanceTimer.print_time("array.size()")

	PerformanceTimer.reset_time()
	for n in num_times:
		len(array)
	PerformanceTimer.print_time("len(array)")

	PerformanceTimer.reset_time()
	for n in num_times:
		array[-1]
	PerformanceTimer.print_time("array[-1]")

	PerformanceTimer.reset_time()
	for n in num_times:
		array[array.size() - 1]
	PerformanceTimer.print_time("array[array.size() - 1]")

	PerformanceTimer.reset_time()
	for n in num_times:
		array.back()
	PerformanceTimer.print_time("array.back()")
