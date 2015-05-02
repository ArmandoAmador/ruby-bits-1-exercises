# Looking Up Games
# Let's add a new method to our DSL that looks up a game from the library and
# allows us to do things with it. Implement the new with_game method being
# called from the example DSL code. It should take a game name and a block,
# look up the game, and execute the block within the context of that game.
# We've added a find_by_name method in Library that you can use.

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

  def find_by_name(name)
    @games.detect { |game| game.name == name }
  end
end

# DSL
LIBRARY = Library.new

def add_game(name, &block)
  game = Game.new(name)
  game.instance_eval(&block)
  LIBRARY.add_game(game)
end

def with_game(name, &block)
  game = LIBRARY.find_by_name(name)
  game.instance_eval(&block)
end

## Data
add_game 'Civilization' do
  system 'PC'
  year 1991
end

with_game 'Civilization' do
  # We'll add some code to operate on the game later
end
