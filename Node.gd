extends Node

var number = 1000
var time = Time.get_ticks_usec()

func _ready():
	print("INI")
#	print(calculate(number))
	var fact_value = 1
	var fact_result = calcul(fact_value)
	print("Càlcul sobre  %4d és %10d" % [fact_value, fact_result])
	print("Càlcul sobre  %4d és %10d" % [2, calcul(2)])
	print("Càlcul sobre  %4d és %10d" % [3, calcul(3)])
	print("Càlcul sobre  %4d és %10d" % [5, calcul(5)])
	print("Càlcul sobre  %4d és %10d" % [fact_value, fact_result])
	print("Càlcul sobre  %4d és %10d" % [2, calcul(2)])
	print("Càlcul sobre  %4d és %10d" % [3, calcul(3)])
	print("Càlcul sobre  %4d és %10d" % [5, calcul(5)])

	print("END")


func _physics_process(delta):
	if Time.get_ticks_usec() - time > 1000000:
		time = Time.get_ticks_usec()
		var num = get_child_count();
		print("Actual numbrer of balls is %5d"%[num])

#func calculate(n):
#	return _calculate(n, 0)
#
#func _calculate(n, accu):
#	if n <= 0:
#		return accu
#	return _calculate(n - 1, accu + n)	

func calcul(n):
	if n < 0:
		return 0
	return _calcul(n, 1)

func _calcul(n, accu):
	if n == 0:
		return accu
	return _calcul(n-1, accu*n)
