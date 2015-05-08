# Tagging Games
# We want to be able to add arbitrary tags to our games,
# so we've updated example.rb to add tags by calling methods
# inside the add_game block. Use method_missing to store these
# tags in a @tags array

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
  def initialize(name)
    @name = name
    @year = nil
    @system = nil
    @tags = []
  end

  def year(value)
    @year = value
  end

  def system(value)
    @system = value
  end

  def print_details
    puts "#{@name} - #{@year} (#{@system})"
    puts @tags.inspect unless @tags.empty?
  end

  def play
  end

  def capture_screenshot
  end

  def method_missing(method, *args)
    @tags << method.to_s
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

def with_game(*names, &block)
  names.each do |name|
    game = LIBRARY.find_by_name(name)
    game.instance_eval(&block)
  end
end


add_game "Civilization" do
  system "PC"
  year 1991
  strategy    # These two method names
  turn_based  # should become tags
end

add_game "The Legend of Zelda", "NES", 1986

