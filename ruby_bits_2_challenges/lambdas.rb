# Lambdas
# Refactor the print_details Proc definition to use Ruby's lambda syntax.

class Game
  attr_accessor :name

  def initialize(name, options)
    @name = name
    @year = options[:year]
    @system = options[:system]
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

  def initialize(games)
    @games = games
  end

  def exec_game(name, action)
    game = games.detect { |game| game.name = name }
    action.call(game)
  end
end

library = Library.new(GAMES)
print_details = lambda { |game| puts "#{game.name} (#{game.system}) - #{game.year}" }
library.exec_game('Contra', print_details)
