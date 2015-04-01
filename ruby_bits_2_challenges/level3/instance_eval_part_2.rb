# instance_eval_part_2
# Using instance_eval and block_given?,
# implement the constructor for the Game class so that it optionally
# accepts a block and runs the block within its context.
class Game
  def initialize(&block)
    instance_eval(&block) if block_given?
  end

  def owner(name = nil)
    if name
      @owner = name
    else
      @owner
    end
  end
end

game = Game.new { owner('Bob') }
puts game.owner
