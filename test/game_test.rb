require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require './lib/code_maker'

class GameTest < Minitest::Test 

  def test_it_exists

    assert Game.new('b')
  end

  def test_level_is_invalid
    
    game = Game.new('p')
    refute game.valid?
  end

  def test_level_is_valid
    
    game = Game.new('N')
    assert game.valid?
  end

  # def test_game_can_read_secret_beginner_code

  #   game = Game.new("")
  #   assert_equal , game.
  # end

  def test_you_can_win
    secret_code = ["R","G","Y","Y"]
    user_guess =  ["R","G","Y","Y"]

    game = Game.new("")
    secret_code = CodeMaker.new("B")
    assert_equal secret_code == user_guess, game.win?
  end

  # def test_user_guess_count_adds
  #   game = Game.new($stdin, $stdout, Display.new)
  #   user_guess = "rrry"
  #   game.process_game_turn
  #   assert_equal 1, game.user_guess_count
  # end

end