# Inheritance 2
# For our ArcadeGame class, we'll also want to track the weight of these giant
# cabinets taking up all of our available space. Luckily we thought ahead: we
# already take in an options parameter that we can stick weight into! Override
# the initialize method for ArcadeGame to take in the same parameters as its
# parent class, call super, and then set weight.

class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at

  def initialize(name, options = {})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
    @created_at = Time.now
  end
end

class ArcadeGame < Game
  attr_accessor :weight

  def initialize(name, options = {})
    super
    self.weight = options[:weight]
  end
end

class ConsoleGame < Game
end

ddr = ArcadeGame.new("Dance Dance Revolution", year: 1998, weight: 800, system: 'Bemani System 573 Analog')
