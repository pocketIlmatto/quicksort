require 'minitest/autorun'
require_relative 'quicksort'

class ArrayTest < MiniTest::Unit::TestCase

	def test_swap
		skip
		assert_equal [1,2], [2,1].swap!(0,1)
	end
	
	def test_empty_array
		test_array = []
		assert_equal test_array.sort, test_array.quicksort!
	end

	def test_sorted_array
		test_array = [0, 2, 3, 4, 4, 5]
		assert_equal test_array, test_array.quicksort!
	end

	def test_reverse_sorted_array
		test_array = [5, 4, 4, 3, 2, 1]
		assert_equal test_array.sort, test_array.quicksort!
	end

	def test_many_random_arrays
		0..100.times do 
			test_array = []
			for i in (1..rand(10000)+1)
				test_array.push(rand(10000000))
			end
			assert_equal test_array.sort, test_array.quicksort!
		end
	end

	def test_negative_array
		test_array = [0, -2, 3, -4, 4, 5, -4]
		assert_equal test_array, test_array.quicksort!
	end

	def test_array_with_non_numbers
		test_array = [0, "a", 3, 4, 4, 5]
		assert_equal test_array, test_array.quicksort!
	end

	def test_array_with_decimals
		test_array = [0, "a", 3.5, 3.2, 3.9, 3, 2.9, 4, 4, 5]
		assert_equal test_array, test_array.quicksort!
	end


end