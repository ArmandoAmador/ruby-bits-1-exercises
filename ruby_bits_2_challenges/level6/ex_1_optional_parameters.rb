# Optional Parameters
# We'd like to provide an optional single-line syntax for adding games to the library.
# Modify the add_game method so the code in example.rb will work.
class Library
  def initialize
    @games = []
  end

  def add_game(game)
    @games << game
  end

  def find_by_name(name)
    @games.detect { |game| game.name == name }
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

  def print_details
    puts "#{@name} - #{@year} (#{@system})"
  end

  def play
  end

  def capture_screenshot
  end
end

LIBRARY = Library.new

# old method
# def add_game(name, &block)
#   game = Game.new(name)
#   game.instance_eval(&block)
#   LIBRARY.add_game(game)
# end

def add_game(name, system = nil, year = nil, &block)
  game = Game.new(name)
  game.system(system) if system
  game.year(year) if year
  game.instance_eval(&block) if block_given?
  LIBRARY.add_game(game)
end

def with_game(name, &block)
  game = LIBRARY.find_by_name(name)
  game.instance_eval(&block)
end


add_game "Civilization" do
  system "PC"
  year 1991
end

add_game "The Legend of Zelda", "NES", 1986
