require 'minitest/autorun'
require 'minitest/pride'
require './lib/code_maker'

class CodeMakerTest < Minitest::Test 
  # attr_reader :cm 

  # def setup 
  #   @cm = CodeMaker.new
  # end

  def test_code_maker_exists
    
    cm = CodeMaker.new(" ")   
    assert cm
  end

  def test_can_create_beginner_4_character_code
    
    cm = CodeMaker.new("b")
    assert_equal 4, cm.secret_code.length
  end

  def test_can_create_intermediate_6_character_code
    
    cm = CodeMaker.new("i")
    assert_equal 6, cm.secret_code.length
  end

  def test_can_create_advanced_8_character_code
    
    cm = CodeMaker.new("a")
    assert_equal 8, cm.secret_code.length
  end


end
