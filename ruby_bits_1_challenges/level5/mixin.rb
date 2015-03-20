# Mixins
# Re-open the Game class and include the GameUtils module so its methods are
# exposed as instance methods. Make sure to do this before it is called.

module GameUtils
  def lend_to_friend(friend)
    puts friend
  end
end

class Game
  include GameUtils

  def initialize(name)
    @name = name
  end
end

game = Game.new('contra')
game.lend_to_friend('Gregg')
