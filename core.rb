require_relative 'util'
require_relative 'quizz_dao'

class Core

	attr_reader :point
	

	def initialize
		@quizz_list = load_quizz_list
		@index = 0
		@total_questions = @quizz_list.length
	end


	def next_question
		if @index < @total_questions 
			[@quizz_list[@index].question, @quizz_list[@index].options]
		else
			[]
		end
	end

	def is_complete?
		@index >= @total_questions 
	end


	def test_question(answer)
		if answer == @quizz_list[@index].answer
			@index+=1
			return true
		else
			return false
		end
	end

	
	def load_quizz_list
		quizz_list = create_quiz_list(read_file2('quiz.txt'))
	end

end


