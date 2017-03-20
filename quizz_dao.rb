
require_relative 'Model'


def create_quiz_list(lines)
	result = []
	lines.each do |line|
		result.push(create_quiz(line))
	end
	result
end

def create_quiz(line)
	fields = line.split(',')
	question = fields[0].strip
	answer = fields[1].strip
	options = fields[2..-1]
	Quizz.new(question, answer, options)
end

