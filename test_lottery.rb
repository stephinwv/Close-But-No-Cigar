require "minitest/autorun"
require_relative "lottery.rb"

class Winning_numbers_test < Minitest::Test
 	
 	def test_1_equals_1
 		assert_equal(1,1)
 	end
  	def test_for_empty_array
  		ticket = []
  		winning = []
  	end
  	def test_winning_num_match
    	ticket = "1234"
    	winning = ["1234", "4567", "8901", "2345", "6789"]
    	assert_equal(["1234"], lottery(ticket, winning))
  	end
end