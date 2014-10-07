class Array

	def quicksort!(i = 0, k = self.length-1)
		if (i < k)
			p = self.partition_qs(i, k)
			self.quicksort!(i, p-1)
			self.quicksort!(p+1, k)
		end
		self
	end

	

	def partition_qs(left, right)

		p_index = rand(right-left+1)+left #choose random pivot
			
		p = self[p_index].to_f
		self.swap!(p_index, right) #move pivot to end
		storeIndex = left

		for i in left..right-1
			if self[i].to_f < p #current value less than pivot
				self.swap!(i, storeIndex) #swap current value w/ first element of >p side
				storeIndex += 1 #move the pointer for the final pivot
			end
		end
		self.swap!(right, storeIndex)#move pivot to correct location
		return storeIndex
	end

	def swap!(a, b)
		self[a], self[b] = self[b], self[a]
	end


end