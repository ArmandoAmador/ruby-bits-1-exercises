# The Library Class
# We'll also need a class to represent our game library,
# holding an array of games. Implement its initialize method,
# initializing the @games instance variable to an empty array.
# Then implement add_game, which should take a game and add
# it to the array.

class Library
  def initialize
    @games = []
  end

  def add_game(game)
    @games << game
  end
end
