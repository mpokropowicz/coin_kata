require "minitest/autorun"
require_relative "change_maker.rb"

class TestChangeMaker < Minitest::Test 

	def test_returns_change

		assert_equal(11, get_change(1.11))
	end
end