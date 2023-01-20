extends Node2D


func run():
	var num_times: int = 1000000

	var a_vector: Vector2 = Vector2(.3, .4)
	PerformanceTimer.reset_time()
	for n in num_times:
		a_vector.length() == 0
	PerformanceTimer.print_time("vector.length() == 0")

	PerformanceTimer.reset_time()
	for n in num_times:
		a_vector == Vector2.ZERO
	PerformanceTimer.print_time("vector == Vector2.ZERO")

	PerformanceTimer.reset_time()
	for n in num_times:
		a_vector < Vector2.ONE
	PerformanceTimer.print_time("vector < Vector2.ONE")

	PerformanceTimer.reset_time()
	for n in num_times:
		a_vector.length() < Vector2.ONE.length()
	PerformanceTimer.print_time("a_vector.length() < Vector2.ONE.length()")

	PerformanceTimer.reset_time()
	for n in num_times:
		a_vector.distance_to(Vector2.ONE)
	PerformanceTimer.print_time("distance_to")

	PerformanceTimer.reset_time()
	for n in num_times:
		a_vector.distance_squared_to(Vector2.ONE)
	PerformanceTimer.print_time("distance_squared_to")

	PerformanceTimer.reset_time()
	for n in num_times:
		(a_vector - Vector2.ONE).length()
	PerformanceTimer.print_time("(a_vector - Vector2.ONE).length()")

	PerformanceTimer.reset_time()
	for n in num_times:
		(a_vector - Vector2.ONE).normalized()
	PerformanceTimer.print_time("(a_vector - Vector2.ONE).normalized()")

	PerformanceTimer.reset_time()
	for n in num_times:
		a_vector.direction_to(Vector2.ONE)
	PerformanceTimer.print_time("direction_to")

	PerformanceTimer.reset_time()
	for n in num_times:
		a_vector - a_vector.normalized() * .1
	PerformanceTimer.print_time("a_vector - a_vector.normalized() * .1")

	PerformanceTimer.reset_time()
	for n in num_times:
		a_vector.move_toward(Vector2.ZERO, .1)
	PerformanceTimer.print_time("a_vector.move_toward(Vector2.ZERO, .1)")

	PerformanceTimer.reset_time()
	for n in num_times:
		(a_vector - Vector2.ONE) * .5
	PerformanceTimer.print_time("(a_vector - Vector2.ONE) * .5")

	PerformanceTimer.reset_time()
	for n in num_times:
		a_vector.linear_interpolate(Vector2.ONE, .5)
	PerformanceTimer.print_time("linear_interpolate")
