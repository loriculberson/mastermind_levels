require 'colorize'
require './lib/display'
require './lib/game'

class MMRunner

  def initialize(input, output)
    display = Display.new
    game = Game.new
    level_options = ["A", "B", "I"]
    input = ""
  end

  def start_game
    puts display.welcome
    puts display.intro
    puts display.game_options
    print display.prompt_for_answer

    input = gets.upcase.chomp
  end

  until quit?
    puts display.game_options #ask what user wants to do
    print display.prompt_for_answer
    input = gets.upcase.chomp #accept answer
    process_user_choices
  end
#   end

#   def process_user_choices
#     case  
#     when play?
#       game = Game.new
#       game.start
      
#     end
#     if input == 'p' || input =='Play'
#     puts display.select_level
#     game_level = gets.chomp
#       if level_options.include?(game_level)
#         game.start(game_level)
#       else
#         puts display.invalid_level_choices
#       end

#   elsif input == 'q'
#    puts display.quit
#   elsif input == 'i'
#    puts display.instructions
#   else
#     puts display.invalid_start_choice
#   end
# end

#   def play?
#     input == "P" || input == "PLAY"
#   end

#   def instructions?
#     input == "I" || input == "INSTRUCTIONS"
#   end

#   def quit?
#     input == "Q" || input == "QUIT"
#   end
end






