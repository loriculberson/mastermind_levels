require 'colorize'
require './lib/display'
require './lib/game'

class MMRunner
  attr_reader :display, :game, :input, :game_level

  def initialize(input, output)
    @display = Display.new
    @game = Game.new("")
    @input = ""
    @game_level = ""
  end

  def start_game
    puts display.welcome
    puts display.intro

    until quit?
      puts display.game_options #ask what user wants to do
      print display.prompt_for_answer
      @input = gets.upcase.chomp #accept answer

      process_user_choices
    end
  end

  def process_user_choices
    case
    when play?

      until game.valid?
        puts display.select_level_again
        print display.prompt_for_answer 
        @game_level = gets.upcase.chomp 
        @game.level = @game_level
      end

      #create a secret_code using @game_level
      # => secret_code = CodeMaker.new(@game_level)

      # Create a guess_evaluator object using the secret_code
      # => guess_evaluator = GuessEvaluator.new(secret_code)

      # Get the guess from the user
      # => everytime a user makes a guess, assign user_guess to that guess

      # compare the secret_code with the user's guess
      # => guess_evaluator.guess = user_guess
      # => guess_evaluator.correct?
      # => pass secret_code to and user_guess to guess_evaluator class 
      # => game.secret_code

      game.start

    when instructions?
      puts display.instructions
    when quit?
      puts display.quit 
    else
      puts display.invalid_choice
    end
  end

  def play?
    input == "P" || input == "PLAY"
  end

  def instructions?
    input == "I" || input == "INSTRUCTIONS"
  end

  def quit?
    input == "Q" || input == "QUIT"
  end


end

      # game = Game.new(@game_level) 
        # if game.valid?
        #   puts display.level_selection(@game_level)
        #   game.start
        # else
        #   puts display.invalid_level_choices







