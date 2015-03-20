# Object Extend
# Extend the single game object with the Playable module,
# so we can call the play method on it.

module Playable
  def play
    puts 'yes'
  end
end

class Game
  def initialize(name)
    @name = name
  end
end

game = Game.new('Contra')
game.extend(Playable)
game.play
