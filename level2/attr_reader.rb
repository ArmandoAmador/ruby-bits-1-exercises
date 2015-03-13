# attr_reader

# When a game is initialized, store another variable called created_at
# which is set to Time.now in the initialize method. Make sure it can be
# accessed, but that it cannot be set from outside the object.

# class Game
#   attr_accessor :name, :year, :system

#   def initialize(name, options={})
#     @name = name
#     @year = options[:year]
#     @system = options[:system]
#   end
# end

class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at

  def initialize(name, options = {})
    @name = name
    @year = options[:year]
    @system = options[:system]
    @created_at = Time.now
  end
end
