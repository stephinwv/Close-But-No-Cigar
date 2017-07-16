require "minitest/autorun"
require_relative "Lottery.rb"

class TestWinningNumbers < Minitest::Test 

    def test_for_array_containing_winner
    	my_num = "123466"
    	winners = ["123966", "256766", "198466", "373666"]
		assert_equal(["123966"], off_by_one(my_num,winners))
		
    end
end 