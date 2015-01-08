require 'colorize'
require './lib/display'
require './lib/game'
require './lib/guess_evaluator'
require './lib/code_maker'

class MMRunner
  attr_reader :display, :game, :input, :guess_eval, :game_level, :user_level, :secret_code, :guess

  def initialize(input, output)
    @display = Display.new
    @guess_eval = GuessEvaluator.new(user_level, secret_code, guess)
    @input = ""
    @game_level = ""
    @secret_code = CodeMaker.new
    @guess = ""
    @game = Game.new
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
      # guess_valid isnt a guess, its a difficulty level 
      # not guess_eval, but LevelSelector.new.valid_level?
      until guess_eval.guess_valid?(@game_level)
        puts display.select_level_again
        print display.prompt_for_answer 
        @game_level = gets.upcase.chomp 
      end

      puts display.level_selection(@game_level)

      # select_level is misnamed, returns a code
      the_code = @secret_code.select_level(@game_level)
      puts "the code is #{the_code.join("")}"

      # need a loop to run the guesses
        Game.new(the_code).start


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



  


      # Create a guess_evaluator object using the secret_code
      # => guess_evaluator = GuessEvaluator.new(secret_code)

      # Get the guess from the user
      # => everytime a user makes a guess, assign user_guess to that guess

      # compare the secret_code with the user's guess
      # => guess_evaluator.guess = user_guess
      # => guess_evaluator.correct?
      # => pass secret_code to and user_guess to guess_evaluator class 
      # => game.secret_code



      # game = Game.new(@game_level) 
        # if game.valid?
        #   puts display.level_selection(@game_level)
        #   game.start
        # else
        #   puts display.invalid_level_choices
