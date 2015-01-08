# require './lib/display'

class Game
  attr_accessor :level
  attr_reader :secret_code

  def initialize(level)
    @level = level
    @level_options = ["A", "B", "N"]
  end

  def valid?
    @level_options.include?(level)
  end

  def win?
    secret_code == user_guess
  end


  
  # until win?
    #ask user for a guess
    #compare to secret code, if equal then win





#create loop to ensure codemaker only gets valid responses

  # def start
  #   
  # end
      
     
 
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
end