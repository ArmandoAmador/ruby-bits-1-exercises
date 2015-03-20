# Symbol to_proc
# Refactor the games.map call, removing its block and using Symbol#to_proc
# instead.

# original
# class Library
#   attr_accessor :games

#   def initialize(games)
#     @games = games
#   end

#   def names
#     games.map { |game| game.name }
#   end
# end

class Library
  attr_accessor :games

  def initialize(games)
    @games = games
  end

  def names
    games.map(&:name)
  end
end
