require_relative 'quiz_dao'
require_relative "model"
require "test/unit"

class TestQuizDAO < Test::Unit::TestCase

	def test_create_quiz_list
		exp_result = [Quiz.new('Cuanto es 3x2?', '6'), Quiz.new('Descubrimiento de America?', '1492')]
		
		list= ['Cuanto es 3x2?,6', 'Descubrimiento de America?, 1492']
		result = create_quiz_list(list)
		
		assert_equal(exp_result, result)
	end

	def test_create_quiz
		exp_result = Quiz.new('Descubrimiento de America?', '1492')
		result = create_quiz('Descubrimiento de America?, 1492')
		
		assert_equal(exp_result, result)
	end

end
