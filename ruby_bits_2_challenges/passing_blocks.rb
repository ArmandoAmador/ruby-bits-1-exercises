# Passing Blocks
# Refactor the each method to be just one line of code, passing the captured
# block directly to games.each.

class Library
  attr_accessor :games

  def initialize(games)
    @games = games
  end

  def each(&block)
    games.each(&block)
  end
end
