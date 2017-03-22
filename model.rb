#!/usr/bin/env ruby


class Quiz

	include Comparable

	attr_reader :question, :answer

	def initialize(question, answer)
	    @question = question
	    @answer = answer
 	end

 	def <=>(anOther)
    	@question <=> anOther.question
    	@answer <=> anOther.answer
  	end

end

