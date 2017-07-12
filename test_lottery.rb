require "minitest/autorun"
require_relative "lottery.rb"

class Winning_numbers_test < Minitest::Test

	def test_1_equals_1
		assert_equal(1,1)
	end
	 def test_for_empty_array
        ticket = []
        winner = []
        assert_equal([],lottery(ticket,winner))
    end

   def test_returns_winner_array_empty
        ticket = "1243"
        winner = []
        assert_equal([],lottery(ticket,winner))
    end
end
