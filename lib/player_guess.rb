#remove all whitespace upon receiving it in the game.rb gets.chomp
#format guess -- upcase, split into array
#ensure a valid userguess is passed to guess evaluator
#valid color choices
#valid length -- too short, too long

class PlayerGuess
  attr_reader :valid_colors, :guess

  def initialize(valid_colors, guess)
    @valid_colors = valid_colors
    @guess = guess
  end 

  def format_guess
    @guess = guess.upcase.chars
  end

  def validate_char
    invalid_char = []

    guess.each do |letter|
      invalid_char << letter unless valid_colors.include?(letter)
    end
    invalid_char.count
  end

  def too_short?
    guess.length < valid_colors.length
  end

  def too_long?
    guess.length > valid_colors.length
  end

end
    # user_guess = "b9yy".upcase.chars