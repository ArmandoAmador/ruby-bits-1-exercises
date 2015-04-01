# respond_to?
# Now that you've added dynamic methods for the strings in the SYSTEMS array,
# make sure that the Library class lets other objects know that it
# responds to those methods.
class Library
  SYSTEMS = ['arcade', 'atari', 'pc']

  attr_accessor :games

  def method_missing(name, *args)
    system = name.to_s
    if SYSTEMS.include?(system)
      self.class.class_eval do
        define_method(system) do
          find_by_system(system)
        end
      end
      send(system)
    else
      super
    end
  end

  def respond_to?(name)
    SYSTEMS.include?(name.to_s)
  end

  private

  def find_by_system(system)
    games.select { |game| game.system == system }
  end
end
