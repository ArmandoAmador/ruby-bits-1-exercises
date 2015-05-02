# Operating On Games
# Let's make the contents of the new with_game block more interesting.
# We'd like to be able to call a method named print_details inside the
# block that prints the game's name, publication year, and system. Add
# that method to Game, and also add a couple placeholder methods named
# play and capture_screenshot with empty implementations.

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

  def print_details
    puts "#{@name} - #{@year} (#{@system})"
  end

  def play
  end

  def capture_screenshot
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
  print_details
end
