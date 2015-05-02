# Initializing Game Data
# Now that we can add games to the library, we'll use the code in the block to
# set the game's details. Implement system and year methods in the Game class
# that store the data in instance variables, then use instance_eval to run the
# block in the context of the game object.

class Library
  def initialize
    @games = []
  end

  def add_game(game)
    @games << game
  end
end

class Game
  attr_reader :name

  def initialize(name)
    @name = name
    @year = nil
    @system = nil
  end

  def year(value)
    @year = value
  end

  def system(value)
    @system = value
  end
end

# DSL
LIBRARY = Library.new

def add_game(name, &block)
  game = Game.new(name)
  game.instance_eval(&block)
  LIBRARY.add_game(game)
end

## Data
add_game 'Civilization' do
  system 'PC'
  year 1991
end
