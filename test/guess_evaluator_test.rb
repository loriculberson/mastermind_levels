require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess_evaluator'

class GuessEvaluatorTest < Minitest::Test 

  def test_it_exists
    
    guess_eval = GuessEvaluator.new([], [])
    assert guess_eval
  end

  def test_guess_is_correct
   
    guess_eval = GuessEvaluator.new(["R","G","Y","B"], ["R","G","Y","B"]) 
    assert guess_eval.correct?

    guess_eval = GuessEvaluator.new(["R","G","Y","B"], ["R","G","Y","G"]) 
    refute guess_eval.correct?
  end

  def test_misplaced_but_matching_colors

    guess_eval = GuessEvaluator.new(["R","G","Y","B"], ["R","G","Y","Y"]) 
    assert_equal 0, guess_eval.misplaced_but_matching_colors

    guess_eval = GuessEvaluator.new(["R","G","Y","G"], ["B","G","G","X"]) 
    assert_equal 1, guess_eval.misplaced_but_matching_colors

    guess_eval = GuessEvaluator.new(["R","G","Y","G"], ["R","G","G","Y"]) 
    assert_equal 2, guess_eval.misplaced_but_matching_colors

    guess_eval = GuessEvaluator.new(["R","Y","G","B"], ["R","G","B","Y"]) 
    assert_equal 3, guess_eval.misplaced_but_matching_colors
  end

  def test_calculates_correct_number_of_color_and_position_matches
    
    guess_eval = GuessEvaluator.new(["R","G","Y","B"], ["R","G","Y","Y"]) 
    assert_equal 3, guess_eval.number_of_correct_matches

    guess_eval = GuessEvaluator.new(["R","G","Y","G"], ["B","G","G","X"]) 
    assert_equal 1, guess_eval.number_of_correct_matches

    guess_eval = GuessEvaluator.new(["R","G","Y","G"], ["R","G","G","Y"]) 
    assert_equal 2, guess_eval.number_of_correct_matches

    guess_eval = GuessEvaluator.new(["R","Y","G","B"], ["G","G","B","Y"]) 
    assert_equal 0, guess_eval.number_of_correct_matches
  end
end