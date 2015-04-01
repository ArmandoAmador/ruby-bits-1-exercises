# class_eval Part 1
# Using class_eval, add a method to the Game class called find_by_owner that
# takes one argument (the owner's name).

class Game
  def self.find_by_title(name)
  end
end

Game.class_eval do
  def self.find_by_owner(name)
  end
end
