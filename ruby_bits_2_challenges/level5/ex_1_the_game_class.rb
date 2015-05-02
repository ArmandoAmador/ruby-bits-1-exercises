# The Game Class
# We're going to build a DSL to help manage our game library.
# Since we know we'll need a Game class, let's go ahead and create a simple one.
# Implement an initialize method that takes the game's name and stores it in an
# instance variable, then add an attr_reader for the name.

class Game
  attr_reader :name
  def initialize(name)
    @name = name
  end
end
