# instance_eval Part 1
# Using instance_eval, set the owner of the contra_game object to 'Alice'.
class Game
  attr_accessor :name, :owner
  def initialize(name)
    @name = name
  end
end

contra_game = Game.new('Contra')
contra_game.instance_eval do
  self.owner = 'Alice'
end
