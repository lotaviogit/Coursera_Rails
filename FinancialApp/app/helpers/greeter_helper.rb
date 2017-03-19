module GreeterHelper
	# Available in ALL views
	def formated_time(time)
		# Output formated time AM/PM
		time.strftime("%I:%M%p")
	end
end
