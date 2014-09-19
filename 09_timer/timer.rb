class Timer
	attr_accessor :seconds
	
	def initialize seconds=0
		@seconds = seconds
	end
	
	def time_string 
		sec_per_min = 60
		hours = @seconds/ sec_per_min**2
		minutes = @seconds % (sec_per_min**2)/sec_per_min
		seconds = (@seconds % sec_per_min**2) % sec_per_min
		times = [hours, minutes, seconds]
		times.map! {|i| (i < 10) ? ("0" + i.to_s) : i.to_s}
		times.join(":")
	end
end
