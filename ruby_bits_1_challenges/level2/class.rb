# class
# Passing around hashes is getting troublesome, let's use a class to hold our
# data. We've started the Game class for you, now please implement the
# initialize method to store name, system and year in instance variables.

# class Game
#   def initialize(name, options={})
#   end
# end

# Game class
class Game
  def initialize(name, options = {})
    @name = name
    @system = options[:system]
    @year = options[:year]
  end
end
