secret_code = ["A","B","C","D"]
guess =       ["A","B","D","C"]

# secret_code = ["Y", "B", "G", "B"]
# guess       = ["B", "Y", "B", "B"]

pairs = secret_code.zip(guess)

unmatched = []
pairs.each do |pair|
 if pair[0] != pair[1]
  unmatched <<  pair
 end
end
unmatched

codes, guesses = unmatched.transpose

matches = codes.select do |code|
  guesses.include?(code)
end

matches.length

# [1,2,3].select { |number| number.odd? }


#partial matches
#find full matches subtract them from new array
# 
