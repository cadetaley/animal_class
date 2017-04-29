class Panda
	attr_accessor :name,:sound,:action,:guessed
	def initialize(name)
		@name = name
		@sound = "grr"
		@action = "looks"
		@guessed = []
	
	end	
	def update_guessed(choice)
		guessed.push(choice)
	end	
	def verify_guessed(choice)
		guessed.include?(choice)
	end	
	def name_count
		name.length
	end 
	def correct_letter?(letter)
		name.include? (letter) 
	end		
	def asterics
		Array.new(name_count,"*")
	end	

end