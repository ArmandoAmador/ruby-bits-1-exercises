# Using Enumerable
# Let's add the power of Ruby's Enumerable module to our game library.
# Implement an each method that yields each game in the library. Finally,
# include the Enumerable module so that we'll be able to call methods like
# select and collect on our library.

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
  include Enumerable

  def initialize(games = [])
    self.games = games
  end

  def each
    games.each { |game| yield game}
  end
end

library = Library.new(GAMES)
library.each { |game| puts game.name }
library.select { |game| game.year == 1986 }
library.collect { |game| game.system }
