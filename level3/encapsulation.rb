# Encapsulation
# We got a little ahead of ourselves and added a has_game? method to Library
# that takes in the name of a game. Then, we realized that it doesn't compare
# year or system! Rather than passing in a game name to the has_game? method,
# pass in an instance of a game, and check for equality with the entire game
# object using the declared == method on Game.

# original
# class Library
#   attr_accessor :games

#   def initialize(games)
#     self.games = games
#   end

#   def has_game?(search_name)
#     for game in games
#       return true if game.name == search_name
#     end
#     false
#   end
# end

# solution
class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at

  def initialize(name, options = {})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
    @created_at = Time.now
  end

  def ==(game)
    name == game.name &&
    system == game.system &&
    year == game.year
  end
end

class Library
  attr_accessor :games

  def initialize(games)
    self.games = games
  end

  def has_game?(search_name)
    games.each do |game|
      return true if game == search_name
    end
  end
end

# Pass a Game object into 'has_game?' instead of just a game name.
# refactor to use each method
