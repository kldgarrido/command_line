require_relative 'core'
require_relative "Model"
require "test/unit"

class TestCore < Test::Unit::TestCase

	def test_next_question
		exp_result = ['Cuanto es 3x2?', ['4', '7', '6', '3', '0']]

		instance = Core.new
		result = instance.next_question

		assert_equal(exp_result, result)
	end

	def test_is_complete?
		exp_result = false

		instance = Core.new
		result = instance.is_complete?

		assert_equal(exp_result, result)
	end


	def test_test_question
		exp_result = true

		instance = Core.new
		result = instance.test_question('3')
		
		assert_equal(exp_result, result)
	end

end