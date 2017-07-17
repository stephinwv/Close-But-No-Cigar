require "minitest/autorun"
require_relative "Lottery.rb"

class TestWinningNumbers < Minitest::Test 

	def test_empty # no winning ticket
		my_num = "3422"
		winners = []
		assert_equal([], lottery(my_num, winners))
	end

							
	def test_win				
		my_num = "3422"
		winners = ["1232", "5674", "3422", "7866"]
		assert_equal(["3422"], lottery(my_num, winners))
	end	

						 
	def test_off_by_one       
	 	my_num = "3422"
	 	winners = ["3423", "3400", "3421", "9876"]
		assert_equal(["3423", "3421"], off_by_one(my_num, winners))
	end	
    def test_for_array_containing_winner
    	my_num = "123466"
    	winners = ["123966", "256766", "198466", "373666"]
		assert_equal(["123966"], off_by_one(my_num,winners))
		
    end
    def test_for_longer_numbers
    	my_num = "1234567"
    	winners = ["987615", "1234577", "1345677", "1224567"]
    	assert_equal(["1234577", "1224567"], off_by_one(my_num, winners))
    end
 end
