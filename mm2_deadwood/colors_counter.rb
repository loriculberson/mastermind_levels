#count the number of colors that match, subtract dupes
#use uniq to eliminate dups 
# ["R","G","Y","G"]
# ["B","G","G","X"]

#zip pairs and delete full matches
#compare colors that match = partial matches

# secret_code = ["G","R","R","B"]
# guess =       ["R","R","G","B"]

# partial_matches = []

#  pairs = secret_code.sort.zip(guess.sort)
#     count = 0
#     pairs.each do |pair|
      
#     if pair[0] == pair[1]
#       count += 1
#     end
#       end
#   count


# guess.each do |letter|
#  letter if secret_code.include?(letter)
#   same << 
#   end
# same.count



# Colors and positions method = "full match"
# secret_code = ["R","G","Y","B"]  # => ["R", "G", "Y", "B"]
# guess = ["G","G","Y","Y"]        # => ["G", "G", "Y", "Y"]



def full_matches

    count = 0
    pairs.each do |pair|
      
    if pair[0] == pair[1]
      count += 1
    end
      end
  count















