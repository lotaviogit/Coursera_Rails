class Algorithm < ActiveRecord::Base

	@count = 0
	
	def self.inversions lst, inv
		if lst.length <= 1
			return [lst, inv]
		else
			mid = (lst.length/2).to_i
			left = inversions(lst[0..mid-1], inv)[0]
			right = inversions(lst[mid..-1], inv)[0]

			result = []
			temp_inv = inv

			i = 0; j = 0

			while (i < left.length) and (j < right.length)
				# Check if the left[i] is less than right[j]
				if left[i] <= right[j]
					# Add the left[i] to the result
					result.push(left[i])
					# Update i
					i += 1
				else
					# If right[j] >= left[i]
					result.push(right[j])
					# Update j
					j += 1
					# Update the inversions
					temp_inv += left.length - i
					@count += left.length - i
				end

				# Check if any indexes, i or j, reached the end
				if i >= left.length
					# Add the rest of the right list
					while j < right.length
						result.push(right[j])
						j += 1
					end

					# End the loop
					# Return the result and the inv
					return [result, temp_inv]
				end
				if j >= right.length
					# Add the rest of the left list
					while i < left.length
						result.push(left[i])
						i += 1
					end

					# End the loop
					# Return the result and the inv
					return [result, temp_inv]
				end
			end
		end
	end

end
