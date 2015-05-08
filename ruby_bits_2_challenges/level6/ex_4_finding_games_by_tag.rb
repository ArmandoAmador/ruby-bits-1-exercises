# Finding Games by Tag
# Now that we can specify tags for games, let's add a new method
# to our DSL to look up games by tag. Implement a with_games_tagged
# method that takes a tag and a block. Find all the games with the given
# tag and execute the block for each one. Note that we've added a
# find_by_tag method on the Library class that you can use.

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

  def find_by_tag(tag)
    @games.select { |game| game.tags.include?(tag) }
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

def with_games_tagged(tag, &block)
  games = LIBRARY.find_by_tag(tag)
  games.each do |game|
    game.instance_eval(&block)
  end
end

add_game "Civilization" do
  system "PC"
  year 1991
  strategy    # These two method names
  turn_based  # should become tags
end

with_games_tagged "strategy" do
  print_details
end

