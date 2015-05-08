# Array Parameters
# A user of our DSL has asked to be able to work with multiple games at once.
# Extend the with_game method to allow multiple game names to be passed, then
# iterate those games and execute the block for each one.

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

def add_game(name, system = nil, year = nil, &block)
  game = Game.new(name)
  game.system(system) if system
  game.year(year) if year
  game.instance_eval(&block) if block_given?
  LIBRARY.add_game(game)
end

#old_method
# def with_game(name, &block)
#   game = LIBRARY.find_by_name(name)
#   game.instance_eval(&block)
# end

def with_game(*names, &block)
  names.each do |name|
    game = LIBRARY.find_by_name(name)
    game.instance_eval(&block)
  end
end


add_game "Civilization" do
  system "PC"
  year 1991
end

add_game "The Legend of Zelda", "NES", 1986
