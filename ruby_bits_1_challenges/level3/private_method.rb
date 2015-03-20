# Private Method
# Things are looking good! We're able to use our Library class to store our
# games now. Whenever we call add_game, let's call a new private method called
# log which will call puts with some information about the game that was added.
# Your log method should take in a string to be displayed.

# original
# class Library
#   attr_accessor :games

#   def initialize(games)
#     self.games = games
#   end

#   def has_game?(search_game)
#     for game in games
#       return true if game == search_game
#     end
#     false
#   end

#   def add_game(game)
#     games << game
#   end
# end

class Library
  attr_accessor :games

  def initialize(games)
    self.games = games
  end

  def has_game?(search_game)
    for game in games
      return true if game == search_game
    end
    false
  end

  def add_game(game)
    games << game
    log("Added the game #{game} to our library")
  end

  private

  def log(message)
    puts message
  end
end
