# define_method_revisited
# Use define_method inside method_missing to dynamically define methods matching
# the SYSTEMS array the first time they are called or call the parent class's
# method_missing if the method is not supported. For example, the first time we
# call atari, we want to define that method and then call it. This new
# atari method should use the find_by_system method to find all the Atari games.

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

  private

  def find_by_system(system)
    games.select { |game| game.system == system }
  end
end
