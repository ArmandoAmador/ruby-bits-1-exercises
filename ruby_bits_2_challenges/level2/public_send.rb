# public_send
# The game find method in library.rb should be protected, so make that change.
# Then, in main.rb, change all the send calls in main.rb to use the more secure
# public_send. We're expecting this to raise an exception.

class Library
  attr_accessor :games

  def initialize(games)
    self.games = games
  end

  def list
    puts games.join("\n")
  end

  def emulate(name)
    game = find(name)
    puts "Starting emulator for #{game}..."
  end

  protected

  def find(name)
    games.detect { |game| game.name == name }
  end
end

Game = Struct.new(:name, :year, :system) do
  def to_s
    "#{name} #{year} #{system}"
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


library = Library.new(GAMES)
library.public_send(:list)
library.public_send(:emulate, "Contra")
game = library.public_send(:find, "Contra")
