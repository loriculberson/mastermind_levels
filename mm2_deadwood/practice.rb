
   # reject invalid characters from user_guess  # ~> NameError: undefined local variable or method `user_guess' for main:Object
    
    user_guess = "b9yy".upcase.chars
    invalid_char = []
    color_choices = %w(R G B Y)

    user_guess.each do |letter|
      invalid_char << letter unless color_choices.include?(letter)
    end
    invalid_char.count

     # invalid_char << letter if letter != "B" && letter != "R" && letter != "G" && letter != "Y"
    # invalid_char = user_guess - color_choices  # => ["/"]
    # invalid_char.count                         # => 1
 
    #   # remaining << letter if letter != "a" && letter !="e" && letter !="i" && letter != "o" && letter != "u" && letter != "y"

# def test_remove_vowels
#     letters = ["a", "l", "b", "e", "l", "o", "n", "g", " ", "t", "o", " ", "u", "s"]
#     remaining = []
#     vowels = %w(a e i o u y)
#     letters.each do |letter|
#       remaining << letter unless vowels.include?(letter)
#       # remaining << letter if letter != "a" && letter !="e" && letter !="i" && letter != "o" && letter != "u" && letter != "y"
#     end
#     assert_equal ["l", "l", " ", "r", " ", "b", "s", " ", "r", " ", "b", "l", "n", "g", " ", "t", " ", "s"], remaining
#   end
