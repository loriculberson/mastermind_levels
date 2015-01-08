require './lib/timer'
require './lib/guess_evaluator'
require './lib/display'
require './lib/player_guess'
require 'colorize'

class Game
  attr_reader :timer, :secret_code, :guess, :display, :level, :turns, :guess_eval, :player_guess, :valid_colors, :colors

  def initialize(secret_code=nil)
    @timer = GameTimer.new
    @guess_eval = GuessEvaluator.new(level, secret_code, guess)
    @display = Display.new
    @turns = 1
    # @secret_code = Codemaker.new 
    @secret_code = secret_code
    @guess = ""
    @player_guess = PlayerGuess.new(valid_colors, guess)
  end

  def start
    timer.start_timer
    puts display.lets_go

      until win? || quit? 
        puts display.guess_count_message(turns)
        puts display.whats_your_guess
        print display.prompt_for_answer
        guess = gets.strip.upcase
        @player_guess = PlayerGuess.new(secret_code, guess)
        
        #need valid_colors from the CodeMaker based on level

        @guess_eval = GuessEvaluator.new(level, secret_code, guess)
        game_in_progress
      end
  end

  def game_in_progress
    case 
    when win?
      timer.readable_time
      puts display.correct_guess.red
      puts display.final_turn_count(@turns,e_time)
    when quit?
      puts display.quit
    else
      @turns += 1
      puts display.perfect_matches = guess_eval.number_of_correct_matches
      puts display.partial_matches = guess_eval.misplaced_but_matching_colors
    end

  end

  def win?
    @secret_code == @guess
  end

  def quit?
    @guess == "Q" || @guess == "QUIT"
  end
end




      # ignore validation for now
      
      # if guess was perfect
      #   player wins!
      # else
      #   tell the user how they did, is their guess close?
      #   have them guess again (loop)

  


  
  # until win?
    #ask user for a guess
    #compare to secret code, if equal then win





#create loop to ensure codemaker only gets valid responses

  
      
     
 
  #   until user_wants_to_quit?()
  # guess = user_guess()

# play loop
#   until user_gets_it_right_or_gives_up
#    user_level = get_user_level()
#    cm = CodeMaker.new(user_level)

#     guess = get_user_guess()
#     pg = PlayerGuess.new(cm.colors, guess)
#     validation = pg.validate_char, too long, short, invalid validate_char

#     ge = GuessEvaluator.new(cm.secret_code, pg.guess)
#     if ge.correct?  happy message
