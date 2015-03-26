# Refactoring
# We've added map and select methods to our game library that
# delegate to the array of games, just like the each method we
# already had. Refactor this using define_method to avoid
# duplicating code. Hint: You'll need to use send inside of
# define_method to call methods on the games array.

class Library
  attr_accessor :games

  def each(&block)
    games.each(&block)
  end

  def map(&block)
    games.map(&block)
  end

  def select(&block)
    games.select(&block)
  end
end
