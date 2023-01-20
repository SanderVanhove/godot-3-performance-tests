extends Node


var _time: int


func reset_time():
	_time = OS.get_ticks_usec()


func print_time(label: String):
	printt(label + ":", "%.3f ms" % ((OS.get_ticks_usec() - _time) / 1000.0))
