require_relative 'quizz_dao'
require_relative "Model"
require "test/unit"

class TestQuizzDAO < Test::Unit::TestCase

	def test_create_quiz_list
		exp_result = [Quizz.new('Cuanto es 3x2?', '6'), Quizz.new('Descubrimiento de America?', '1492')]
		
		list= ['Cuanto es 3x2?,6', 'Descubrimiento de America?, 1492']
		result = create_quiz_list(list)
		
		assert_equal(exp_result, result)
	end

	def test_create_quiz
		exp_result = Quizz.new('Descubrimiento de America?', '1492')
		result = create_quiz('Descubrimiento de America?, 1492')
		
		assert_equal(exp_result, result)
	end

end
