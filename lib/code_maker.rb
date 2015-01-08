class CodeMaker
  attr_reader :colors, :secret_code

  def initialize
    @secret_code = []
    @colors = []
  end

  def select_level(level)
    if level == "B" #4 color choices
      @colors = ["R","G","Y","B"]
      i = 4

    elsif level == "N" #5 color choices
      @colors = ["R","G","Y","B","X"]
      i = 6

    elsif level == "A" #6 color choices
      @colors = ["R","G","Y","B","X","P"]
      i = 8
    end
    create_the_code(i)
  end

  def create_the_code(i)
    i.times do
      @secret_code << @colors.sample
    end
      @secret_code
  end
end

# class CodeMaker

  # def initialize
  #   @secret_code = []

#   def beginner
#     four_colors = ["R","G","Y","B"]
#     secret_code = []
#     4.times do
#       secret_code << four_colors.sample
#     end
#       secret_code
#   end

#   def intermediate
#     five_colors = ["R","G","Y","B","X"]
#     secret_code = []
#     6.times do
#       secret_code << five_colors.sample
#     end
#       secret_code
#   end

#   def advanced
#     six_colors = ["R","G","Y","B","X","P"]
#     secret_code = []
#     8.times do
#       secret_code << six_colors.sample
#     end
#       secret_code
#   end
# end
