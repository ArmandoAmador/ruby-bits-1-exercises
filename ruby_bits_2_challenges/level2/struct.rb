# Struct
# Our Game class is a simple data structure, so refactor it to use Struct.

# class Game
#   attr_accessor :name, :year, :system

#   def initialize(name, year, system)
#     self.name = name
#     self.year = year
#     self.system = system
#   end
# end

Game = Stuct.new(:name, :year, :system)
