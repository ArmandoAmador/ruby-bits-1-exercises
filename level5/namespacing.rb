# Namespacing
# Create a module named GameUtils and place the lend_to_friend method
# inside the module. Change lend_to_friend to a class method by prefixing
# it with self.You won't need to require this module since it'll be
# inside the same file (already required), but you will
# have to namespace your method call.

# original
# def lend_to_friend(game, friend_email)
# end

# game = Game.new("Contra")
# lend_to_friend(game, "gregg@codeschool.com")

class Game
  def initialize(name)
    @name = name
  end
end

module GameUtils
  def self.lend_to_friend(game, friend_email)
    puts game
    puts friend_email
  end
end

game = Game.new('Contra')
GameUtils.lend_to_friend(game, 'gregg@codeschool.com')
