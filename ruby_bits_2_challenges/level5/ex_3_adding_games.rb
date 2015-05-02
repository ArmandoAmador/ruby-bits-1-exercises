# Adding Games
# Now we can get started implementing our DSL.
# The example below shows the syntax we'd like to use for the DSL.
# Let's ignore the block for now and make the add_game method work.
# Implement add_game, creating a new Game object with the given name
# and adding it to the library.

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
  end
end

# DSL
LIBRARY = Library.new

def add_game(name)
  game = Game.new(name)
  LIBRARY.add_game(game)
end

## Data
add_game 'Civilization' do
  system 'PC'
  year 1991
end
