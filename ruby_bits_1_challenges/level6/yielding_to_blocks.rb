# Yielding to blocks
# We'd like to be able to operate on our games by system. Implement an
# each_on_system method that iterates over our games using each and yields
# to a block for every game on the requested system. To test that it's working,
# we'll call each_on_system with a simple block that prints a message for every
# Super Nintendo game in our library. See the example.rb below.

class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at

  def initialize(name, options={})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
    @created_at = Time.now
  end
end

GAMES = [
  Game.new('Contra', year: 1987, system: 'NES'),
  Game.new('Civilization', year: 1991, system: 'PC'),
  Game.new('The Legend of Zelda', year: 1986, system: 'NES'),
  Game.new('Mega Man X2', year: 1995, system: 'SNES'),
  Game.new('Super Metroid', year: 1994, system: 'SNES'),
  Game.new('Sim City 2000', year: 1993, system: 'PC'),
  Game.new('Starcraft', year: 1998, system: 'PC')
]

class Library
  attr_accessor :games

  def initialize(games = [])
    self.games = games
  end

  def each_on_system(system)
    games.each { |game| yield if game.system == system }
  end
end

library = Library.new(GAMES)
library.each_on_system("SNES") { puts "Found a Super Nintendo game" }
