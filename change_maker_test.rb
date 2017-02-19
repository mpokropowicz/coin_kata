require "minitest/autorun"
require_relative "change_maker.rb"

class TestChangeMaker < Minitest::Test 

	$change_of_11 = {:dime => 1, :penny => 1}
	$change_of_93 = {:quarter => 3, :dime => 1, :nickel => 1, :penny => 3}
	$change_of_31 = {:quarter => 1, :nickel => 1, :penny => 1}

	def test_returns_change

		assert_equal(11, parse_change(1.11))
	end

	def test_change

		results = change(11)
		assert_equal($change_of_11, results)
		results = change(93)
		assert_equal($change_of_93, results)
		results = change(31)
		assert_equal($change_of_31, results)
	end
end