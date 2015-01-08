require 'minitest/autorun'
require 'minitest/pride'
require './lib/player_guess'

class PlayerGuessTest < Minitest::Test 
  
  def test_it_exists

    player_guess = PlayerGuess.new(["R","G","Y","B"], "bryg")
    assert player_guess
  end

  def test_guess_is_an_array
    
    player_guess = PlayerGuess.new(["R","G","Y","B"], "bryg")
    assert_equal ["B","R","Y","G"], player_guess.format_guess
  end

  def test_beginner_guess_is_valid
    
    player_guess = PlayerGuess.new(["R","G","Y","B"], ["B","R","Y","Y"])
    assert_equal 0, player_guess.validate_char
   
    player_guess = PlayerGuess.new(["R","G","Y","B"], ["B","B","B","B"])
    assert_equal 0, player_guess.validate_char

   player_guess = PlayerGuess.new(["R","G","Y","B"], ["Y","G","R","R"])
   assert_equal 0, player_guess.validate_char
  end

  def test_intermediate_guess_is_valid
    
    player_guess = PlayerGuess.new(["R","G","Y","B","X"], ["B","B","X","R","Y","Y"])
    assert_equal 0, player_guess.validate_char
  end

  def test_beginner_guess_is_not_valid
    
    player_guess = PlayerGuess.new(["R","G","Y","B"], ["B","R","Y","+"])
    assert_equal 1, player_guess.validate_char
   
    player_guess = PlayerGuess.new(["R","G","Y","B"], ["B","9","Y","+"])
    assert_equal 2, player_guess.validate_char
    
    player_guess = PlayerGuess.new(["R","G","Y","B"], ["%","R","p","+"])
    assert_equal 3, player_guess.validate_char
  end

  def test_if_beginner_guess_is_too_short
    
    player_guess = PlayerGuess.new(["R","G","Y","B"], ["Y","G","R"])
    assert player_guess.too_short?
  end

  def test_beginner_guess_is_correct_length

    player_guess = PlayerGuess.new(["R","G","Y","B"], ["Y","G","R","G"])
    refute player_guess.too_short?  
    refute player_guess.too_long?  
  end

  def test_beginner_guess_is_too_long
    
    player_guess = PlayerGuess.new(["R","G","Y","B"], ["Y","G","R","G","R"])
    assert player_guess.too_long?  
  end
end


# attr_reader :beginner_colors, :intermediate_colors, :advanced_colors

  # def setup
  #   @player_guess = PlayerGuess.new(["R","G","Y","B"])
  # end

  # def setup
  #   @beginner_colors =      ["R","G","Y","B"]
  #   @intermediate_colors =  ["R","G","Y","B","X"]
  #   @advanced_colors =      ["R","G","Y","B","X","P"]
  # end


