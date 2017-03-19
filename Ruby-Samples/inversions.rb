

class Inversions
	attr_accessor :invr

	def initialize(invr = 0)
		@invr = invr
	end

	def inversions(lst, inv)
		print lst
		puts ""
		print "Inversions = " + @invr.to_s
		puts ""
		if lst.length <= 1
			return [lst, inv]
		#elsif lst.length == 2
		#	if lst[1] < lst[0]
		#		inv += 1
		#		@invr += 1
		#		return [[lst[1], lst[0]], inv]
		#	else
		#		return [lst, inv]
		#	end
		else
			mid = (lst.length/2).to_i
			left = inversions(lst[0..mid-1], inv)[0]
			right = inversions(lst[mid..-1], inv)[0]

			result = []

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
					@invr += left.length - i
					j += 1

					print left
					print " "
					print right
					puts ""
					print "New inversions = " + @invr.to_s
					puts ""

					# Update the inversions
					# temp_inv += left.length - i
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
					print "End inversions = " + @invr.to_s
	    			puts ""
					return [result, inv]
				end
				if j >= right.length
					# Add the rest of the left list
					while i < left.length
						result.push(left[i])
						i += 1
					end

					# End the loop
					# Return the result and the inv
					print "End inversions = " + @invr.to_s
	    			puts ""
					return [result, inv]
				end
			end
		end
	end

	def merge(arr, left, right)
	    i = 0; j = 0; count = 0
	    while (i < left.length or j < right.length)
	        if i == left.length
	            arr[i+j] = right[j]
	            j+=1
	        elsif j == right.length
	            arr[i+j] = left[i]
	            i+=1
	        elsif (left[i] <= right[j])
	            arr[i+j] = left[i]
	            i+=1            
	        else 
	            arr[i+j] = right[j]
	            count += left.length-i
	            j+=1
	            print left
				print " "
				print right
				puts ""
				print "New inversions = " + count.to_s
				puts ""
	        end
	    end
	    
	    print "End inversions = " + count.to_s
	    puts ""
	    return count
	end

	def invCount(lst)
		print lst
		puts ""
		if lst.length < 2
			return 0
		end

		mid = (lst.length/2).to_i
		left = lst[0..mid-1]
		right = lst[mid..-1]

		# return invCount(left) + invCount(right) + merge(lst, left, right)
		invs = invCount(left) + invCount(right) + merge(lst, left, right)
		puts "Inversions = " + invs.to_s
		return invs

	end

	def getInversions(lst)
		self.inversions(lst, 0)
		puts self.invr
	end
end


def testInversions()
	# print inversions([1, 2, 4, 5, 3], 0)[0]
	# puts ""
	# print inversions([1, 2, 4, 5, 3], 0)[1]
	# puts ""

	lst = [4, 1, 3, 2, 9, 1]
	sort = inversions(lst, 0)
	# print inversions(lst, 0)[0]
	puts ""
	# print inversions(lst, 0)[1]
	print global_inv
	puts ""
end

lst = [4, 1, 3, 2, 9, 1]
invs = Inversions.new()
puts "First"
invs.getInversions(lst)
puts "-----"
puts "Second"
puts invs.invCount(lst)
puts "-----"