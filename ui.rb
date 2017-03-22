require_relative 'core'

def main
	core = Core.new
	i = 1
	while !core.is_complete?
		quiz = core.next_question
		output_question(quiz[0], quiz[1], i)
		
		result_test = core.test_question(input_answer)
		complete = core.is_complete?

		test(result_test, complete)

		i += 1
	end
end


def output_question(question, options, i)
	system "clear" or system "cls"
	puts "Question #{i}: #{question}"
	i = 0
	while i< options.length
		option = options[i]
		puts "#{i+1}-) #{option}"
		i += 1
	end
	puts "--------"
	puts "Select the best item, write the number."
end

def input_answer
	answer = gets.chomp
end

def test(result_test, complete)
	if  result_test && !complete
			puts ""
			puts "Congratulation!. You go to the next level"
			puts "--------"
			puts "Press enter to continue."
			gets.chomp
	elsif result_test == false
			puts "You lost. Game finish"
			return
	else
			puts ""
			puts "*********************************************"
			puts "* Congratulation!. You go to the next level *"
			puts "*********************************************"
			return
	end
end



main
