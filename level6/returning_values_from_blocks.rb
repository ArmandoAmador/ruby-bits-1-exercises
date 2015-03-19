# Returning Values from Blocks
# Earlier we wrote a list method that prints the name of each game in our
# library. We can make the output formatting more flexible by allowing a
# block to be passed to the list method. We'll yield each game to the block
# and allow the block to format and return a string for us to display. Modify
# the list method to yield to a block and print whatever the block returns.

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

  def list
    games.each do |game|
      puts yield(game)
    end
  end
end

library = Library.new(GAMES)
library.list { |game| "#{game.name} (#{game.system}) - #{game.year}" }
