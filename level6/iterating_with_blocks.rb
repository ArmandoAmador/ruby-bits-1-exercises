# Iterating with blocks
# Let's build a Library class that will manage our growing collection of games.
# We've already written a list method that prints the names of all our games,
# but it uses an ugly for loop to iterate the list. Refactor it to use each
# with a block instead.

# original
# class Library
#   attr_accessor :games

#   def initialize(games = [])
#     self.games = games
#   end

#   def list
#     for i in 0...(games.length)
#       game = games[i]
#       puts game.name
#     end
#   end
# end

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
      puts game.name
    end
  end
end

library = Library.new(GAMES)
library.list
# => Contra
# => Civilization
# => The Legend of Zelda
# => Mega Man X2
# => Super Metroid
# => Sim City 2000
# => Starcraft
