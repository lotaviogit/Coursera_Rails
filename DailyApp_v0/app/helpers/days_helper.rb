module DaysHelper
	def getDay
		return Time.new.inspect[8..9].to_i
	end

	def getMonth
		return Time.new.inspect[5..8].to_i
	end

	def getYear
		return Time.new.inspect[0..4].to_i
	end

end
