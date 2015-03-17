# Extend
# Good job! Now expose the methods from the GameUtils
# module as class methods of the Game class.

module GameUtils
  def find_all_from_user(username)
    puts username
  end
end

class Game
  extend GameUtils

  def initialize(name)
    @name = name
  end
end

Game.find_all_from_user("Gregg")
