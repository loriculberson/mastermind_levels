class Display

def welcome
   print "\e[2J\e[f"

    puts"                                                   WELCOME TO                                                    "

    puts'   .___  ___.      ___           _______..___________. _______ .______      .___  ___.  __  .__   __.  _______   '
    puts'   |   \/   |     /   \         /       ||           ||   ____||   _  \     |   \/   | |  | |  \ |  | |       \  '
    puts'   |  \  /  |    /  ^  \       |   (----``---|  |----`|  |__   |  |_)  |    |  \  /  | |  | |   \|  | |  .--.  | '
    puts'   |  |\/|  |   /  /_\  \       \   \        |  |     |   __|  |      /     |  |\/|  | |  | |  . `  | |  |  |  | '
    puts'   |  |  |  |  /  _____  \  .----)   |       |  |     |  |____ |  |\  \----.|  |  |  | |  | |  |\   | |   --   | '
    puts'   |__|  |__| /__/     \__\ |_______/        |__|     |_______|| _| `._____||__|  |__| |__| |__| \__| |_______/  '
    puts "\n"                                       
end

def intro
    "MasterMind is a code-breaking game. Your job is to guess a secret 4, 6 or 8 color code.After each attempt,\nI'll give you a hint by telling you how many colors and positions you have correct.".blue 
end

def game_options
    "\nTo PLAY, press [P]. To read the INSTRUCTIONS press [I]. To QUIT press [Q]"
end

def prompt_for_answer
     ">> "
end

def hard_return
  "-------------------------------------------------------------------------"
end

def quit
  "Really? I can't believe you're quitting already!"
end

def instructions
  "There are 3 levels of Mastermind, Beginner, Intermediate and Advanced. In each level your job is to guess a secret color code.\nThe beginner level has 4 colors and positions, intermediate has 5 colors and 6 positons and the advanced version has 6 colors and 8 positions. After each attempt,\nI'll give you a hint by telling you how many colors and positions you have correct.".blue
end

 def basic_instructions
    "Beginner: Your job is to guess a secret 4 color code. Colors include: [R]ed, [B]lue, [G]reen and [Y]ellow. Keep in mind, colors may be repeated more than once. \nValid guesses: RBYG, BBYR and YGBR. Invalid guesses: RYG, YYG& and GBG6. Good luck!\n."
  end

  def intermediate_instructions
    #fix colors
    "Intermediate: Your job is to guess a secret 5 color code, but there are 6 positions. That means colors may be repeated more than once. 5 Color choices: (R)ed, (G)reen, (Y)ellow and (B)lue and (X)black. \nValid guesses: RBYXGG, BBYXYR and YGBGBR. Invalid guesses: RYG, YYG& and GBG6. Good luck!\n."
  end

  def advanced_instructions
    #fix colors
    "Advanced: Your job is to guess a secret 6 color code, but there are 8 positions. Colors include: [6 Color choices: (R)ed, (G)reen, (Y)ellow, (B)lue, (X)black and P(ink). Keep in mind, colors may be repeated more than once. \nValid guesses: RBXPRRYG, BRYXGBYR and XPGBYGBR. Invalid guesses: RYG, YYG& and GBGPXXP6. Good luck!."
  end

  def invalid_choice
    "Your entry was invalid."
  end 

  def select_level
    "There are three levels to Mastermind.\nPlease select the letter that corresponds to the level you would like to play:\n'(B)' for Beginner, '(N)' for Intermediate and '(A)' Advanced."
  end

  def select_level_again
    "Please select the letter that corresponds to the level you would like to play:\n'(B)' for Beginner, '(N)' for Intermediate and '(A)' Advanced."
  end

  def invalid_level_choices
    "Sorry!"
  end

  def your_level_is(level)
    "You have selected to play the #{level} level. Good luck!"
  end

  def level_selection(level)
    case level
    when "B" then your_level_is("BEGINNER")
    when "N" then your_level_is("INTERMEDIATE")
    when "A" then your_level_is("ADVANCED") 
    else 
      invalid_level_choices
    end
  end

  def color_choice(level)
    case level
    when "B" then puts "Beginners:".blue "4 color choices and 4 positions: (R)ed, (G)reen, (Y)ellow and (B)lue." 
    when "N" then puts "Intermdiate:".blue "5 Color choices: (R)ed, (G)reen, (Y)ellow and (B)lue and (X)black."
    when "A" then puts "Advanced:".blue "6 Color choices: (R)ed, (G)reen, (Y)ellow, (B)lue, (X)black and P(ink)."
    else
      puts "Your selection is invalid. Please select '(B)' for Beginner, '(N)' for Intermediate and '(A)' Advanced."
    end
  end

  def what_is_your_guess
    "What is your guess?" + prompt_for_answer
  end

  def guess_count_message(guess_count)
   "Guess #: #{guess_count}.\n".green
  end

  def lets_go
    "Let's go!"
  end

  def whats_your_guess
    "What's your guess?"
  end

  def correct_guess
    "You win! Nice job!"
  end

  def final_turn_count(turns, e_time)
    "It took you a total of #{turns} guess(es) and #{e_time} minutes."
  end

  def perfect_matches()
    "You have  "
  end
 
end
