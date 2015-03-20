# Capturing Blocks
# Refactor this each method to capture its block as a Proc object,
# then inside of the games.each block, call the captured Proc
# instead of yielding.

# Original
# class Library
#   attr_accessor :games

#   def initialize(games)
#     @games = games
#   end

#   def each
#     games.each do |game|
#       yield game
#     end
#   end
# end

class Library
  attr_accessor :games

  def initialize(games)
    @games = games
  end

  def each(&block)
    games.each(&block)
  end
end
