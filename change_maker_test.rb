require "minitest/autorun"
require_relative "change_maker.rb"

class TestChangeMaker < Minitest::Test 

	@change_of_11 = {:dime => 1, :penny => 1}

	def test_returns_change

		assert_equal(11, parse_change(1.11))
	end

	def test_dimes_pennys

		results = correct_change(11)

		assert_equal(@change_of_11, results)
	end
end