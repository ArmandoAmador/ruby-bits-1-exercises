# Alias Method
# Our game library has an each method that iterates the list of games.
# Add a method called each_game that does the same thing as each, but
# without duplicating the code.

class Library
  attr_accessor :games

  def each(&block)
    games.each(&block)
  end

  alias_method :each_game, :each
end
