# Refactoring with Blocks
# Now that our library is complete, let's play some games! A friend has given
# us his Emulator class to use, and we've implemented methods to play a game
# and grab a screenshot. But look at all that duplicated code in play and
# screenshot. Refactor the duplication (the begin, new and rescue parts)
# into a private method called emulate that handles the emulator setup and
# exception handling and yields the emulator instance to a block

class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at

  def initialize(name, options={})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
    @created_at = Time.now
  end

  def play
    emulate { |emulator| emulator.play(self) }
  end

  def screenshot
    emulate do |emulator|
      emulator.start(self)
      emulator.screenshot
    end
  end

  private

  def emulate
    emulator = Emulator.new(system)
    yield emulator

    rescue Exception => e
      puts "Emulator failed: #{e}"
    end
end
