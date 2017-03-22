require_relative 'core'

def execute
	core = Core.new
	
	while !core.is_complete?
		question = core.next_question
		output_question(question)
		
		result_test = core.evaluate_question(input_answer)
		complete = core.is_complete?

		evaluate(result_test, complete)
	end
end


def output_question(question)
	system "clear" or system "cls"

	puts "Bienvenido a reto 5."
	puts "Para jugar, solo ingresa el termino correcto para"
	puts "cada una de las definiciones, Listo? Vamos!"
	puts ""
	puts "Definición"
	puts question
	
	print "Adivininar: "
end

def input_answer
	answer = gets.chomp
end

def evaluate(result_test, complete)
	puts ""
	if  result_test && !complete
			puts "It's Correct!. You go to the next level"
			puts "--------"
	elsif result_test == false
			puts "You wrong. Try again"
	else
			puts "*************************************"
			puts "* Congratulation!. You won the Game *"
			puts "*************************************"
	end
	puts "Presione una tecla para continuar"
	gets.chomp
end

