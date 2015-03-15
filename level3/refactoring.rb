# Refactoring
# Our to_s method will come in very handy. Whenever we need to output a game,
# rather than calling a method on the game, we can just output the game object
# and Ruby will call to_s on it automatically. Refactor both classes below.
# Change the description method of Game to use the to_s method implicitly.
# Then remove any duplicated code in ConsoleGame. Note: you'll need to use
# self inside a class to reference the entire object.

# Original
# class Game
#   attr_accessor :name, :year, :system
#   attr_reader :created_at
#   def initialize(name, options={})
#     self.name = name
#     self.year = options[:year]
#     self.system = options[:system]
#     @created_at = Time.now
#   end

#   def to_s
#     self.name
#   end

#   def description
#     "#{self.name} was released in #{self.year}."
#   end
# end

# class ConsoleGame < Game
#   def to_s
#     "#{self.name} - #{self.system}"
#   end

#   def description
#     "#{self.name} - #{self.system} was released in #{self.year}."
#   end
# end

# Refactored
class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at
  def initialize(name, options = {})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
    @created_at = Time.now
  end

  def to_s
    name
  end

  def description
    "#{self} was released in #{year}."
  end
end

# subclass of Game
class ConsoleGame < Game
  def to_s
    "#{name} - #{system}"
  end
end
