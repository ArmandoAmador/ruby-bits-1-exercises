# Inheritance 3
# Whenever we output a game right now it'll show up using the to_s method from
# Object, the parent object of Game. A basic to_s implementation is completed
# below on Game. Override this for ConsoleGame to also show the system the
# game is on.

# Parent class to Arcade Game and Console Game
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
end

# subclass to game
class ArcadeGame < Game
  attr_accessor :weight

  def initialize(name, options = {})
    super
    self.weight = options[:weight]
  end
end

# subclass to game
class ConsoleGame < Game
  def to_s
    "Name: #{name}, System: #{system}"
  end
end

ddr = ConsoleGame.new(
  'Dance Dance Revolution',
  year: 1998,
  system: 'Bemani System 573 Analog'
)
puts ddr.to_s
