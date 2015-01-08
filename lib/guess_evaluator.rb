class GuessEvaluator
  attr_reader :secret_code, :guess

  def initialize(secret_code, guess)
    @secret_code = secret_code
    @guess = guess
  end

  def correct?
    secret_code == guess
  end

  def misplaced_but_matching_colors
    pairs = secret_code.zip(guess)

    unmatched = []

    pairs.each do |pair|
      if pair[0] != pair[1]
        unmatched <<  pair
      end
    end

    codes, guesses = unmatched.transpose

    matches = codes.select do |code|
      guesses.include?(code)
    end

    matches.length
  end

  def number_of_correct_matches
    pairs = secret_code.zip(guess)

    count = 0
    pairs.each do |pair|
      
    if pair[0] == pair[1]
      count += 1
    end
      end
    count
  end
end
