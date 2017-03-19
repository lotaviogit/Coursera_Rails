class AlgorithmsController < ApplicationController

	def index
	end

	def getInversions
		@lst = params[:lst] || "1,2,3"

		# Check if there is something other than commas and numbers
		if (/[.\/#!$%\^&\*;:{}=\-_`~()]\n\s\D/ =~ @lst) != nil
			@lst = []
		end

		# Get the inversions now
		@lst = @lst.split(",")
		@lst_inv = []

		@lst.each do |i|
			@lst_inv.push(i.to_i)
		end

		@count = Algorithm.inversions(@lst_inv, 0)
		@count2 = Algorithm.count
	end

	def new
	end

	def create
	end

	def delete
	end

	def destroy
	end
end
