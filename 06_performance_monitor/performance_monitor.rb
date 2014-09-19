require 'time'

def measure(repeat = 1)
	start_time = Time.now
	repeat.times {yield}
	(Time.now-start_time)/repeat
end