#!/usr/bin/env ruby


class Quizz

	include Comparable

	attr_reader :question, :answer, :options

	def initialize(question, answer, options)
	    @question = question
	    @answer = answer
	    @options = options
 	end

 	def <=>(anOther)
    	@question <=> anOther.question
    	@answer <=> anOther.answer
    	@options <=> anOther.options
  	end

end


exp_result = Quizz.new('Descubrimiento america?', '2', ['1942', '1492', '1000', '300 AC'])
puts exp_result.question