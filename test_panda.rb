require "minitest/autorun"
require_relative "panda.rb"
class Testpandafunctions <Minitest::Test
	def test_class_returns_Name
		animal=Panda.new("Goteo")
		assert_equal("Goteo",animal.name)
	end	
	def test_class_returns_sound
		animal = Panda.new("Goteo")
		assert_equal("grr",animal.sound)
	end	
	def test_class_returns_action
		animal = Panda.new("Goteo")
		assert_equal("looks",animal.action)
		assert_equal("Goteo",animal.name)
		assert_equal("grr",animal.sound)
	end
	def test_class_returns_char_length
		animal = Panda.new("Goteo")
		assert_equal(5,animal.name_count)
	end
	def test_class_returns_char_length
		animal = Panda.new ("Duhh")
		assert_equal(4,animal.name_count)
	end
	def test_class_returns_char_length
		animal = Panda.new("Love")	
		assert_equal(4,animal.name_count)
	end
	def test_class_returns_if_letter_included_in_name
		animal = Panda.new("Goteo")	
		letter = "G"
		assert_equal(true,animal.correct_letter?(letter))
	end	
	def test_class_two_returns_if_letter_included_in_name
		animal = Panda.new("Goteo")
		letter = "o"
		assert_equal(true,animal.correct_letter?(letter))
	end
	def test_class_three_returns_if_letter_included_in_name
		animal = Panda.new("Goteo")
		letter = "t"
		assert_equal(true,animal.correct_letter?(letter))
	end
	def test_class_returns_if_letter_included_in_name
		animal = Panda.new("Goteo")
		letter = "e"
		assert_equal(true,animal.correct_letter?(letter))
	end
	def test_class_returns_if_letter_included_in_name
		animal = Panda.new("Goteo")
		letter = "o"
		assert_equal(true,animal.correct_letter?(letter))
	end
	def test_class_returns_if_letter_included_in_name
		animal = Panda.new("Goteo")
		letter = "d"
		assert_equal(false,animal.correct_letter?(letter))
	end
	def test_class_returns_asterics
		animal = Panda.new("Goteo")
		assert_equal(["*","*","*","*","*"],animal.asterics)
	end
	def test_class_returns_asterics
		animal = Panda.new("Austin")
		assert_equal(["*","*","*","*","*","*"],animal.asterics)
	end	
	def test_class_user_guess_pushed_in_guess_array
		animal = Panda.new("Austin")
		letter ="A"
		assert_equal(["A"],animal.update_guessed(letter))
	end	
	def test_class_two_user_guess_pushed_in_guess_array
		animal = Panda.new("Austin")
		animal.guessed = ["A","D","Y"]
		letter = "S"
		assert_equal(["A","D","Y","S"],animal.update_guessed(letter))
	end
	def test_class_if_guess_already_in_array_returns_false
		animal = Panda.new("alreadyguessed")
		animal.guessed =["b","l","o"]
		letter = "w"
		assert_equal(false,animal.verify_guessed(letter))
	end
	def test_class_if_guess_already_in_array_returns_false
		animal = Panda.new("alreadyguessed")
		animal.guessed =["c","v","n"]
		letter = "m"
		assert_equal(false,animal.verify_guessed(letter))
	end
	def test_class_if_guess_already_in_array_returns_false
		animal = Panda.new("alreadyguessed")
		animal.guessed =["p","q","e"]
		letter = "g"
		assert_equal(false,animal.verify_guessed(letter))
	end




end