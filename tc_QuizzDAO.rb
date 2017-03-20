require_relative 'quizz_dao'
require_relative "Model"
require "test/unit"

class TestQuizzDAO < Test::Unit::TestCase

	def test_create_quiz_list
		exp_result = [Quizz.new('Cuanto es 3x2?', '3', ['4', '7', '6', '3', '0']), Quizz.new('Descubrimiento America?', '2', ['1942', '1492', '1000', '300 AC'])]
		
		list= ['Cuanto es 3x2?, 3,4,7,6,3,0', 'Descubrimiento America?, 2,1942,1492,1000,300 AC']
		result = create_quiz_list(list)
		
		assert_equal(exp_result, result)
	end

	def test_create_quiz
		exp_result = Quizz.new('Descubrimiento America?', '2', ['1942', '1492', '1000', '300 AC'])
		result = create_quiz('Descubrimiento America?,2,1942,1492,1000,300 AC')
		
		assert_equal(exp_result, result)
	end

end
