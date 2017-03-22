require_relative 'util'
require_relative 'quiz_dao'

class Core

	attr_reader :point
	

	def initialize
		@quiz_list = load_quiz_list
		@index = 0
		@total_questions = @quiz_list.length
	end


	def next_question
		if @index < @total_questions 
			@quiz_list[@index].question
		else
			""
		end
	end

	def is_complete?
		@index >= @total_questions 
	end


	def evaluate_question(answer)
		if answer == @quiz_list[@index].answer
			@index+=1
			return true
		else
			return false
		end
	end


	private
	def load_quiz_list
		quiz_list = create_quiz_list(read_file('quiz.txt'))
	end

end


