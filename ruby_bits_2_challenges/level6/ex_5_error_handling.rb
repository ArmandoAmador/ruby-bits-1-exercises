# Error Handling
# We don't have a working emulator for the SNES system,
# so modify the play method to raise an exception whenever
# we try to play a SNES game. The exception message should be
# "No emulator for SNES games."

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
    if @system == "SNES"
      raise "No emulator for SNES games."
    end
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

add_game "Super Metroid", "SNES", 1994

with_game "Super Metroid" do
  play  # we expect this to raise an exception
end

