# Collection Class
# Managing our game library is getting a little difficult with all of these game
# instances floating around. Let's create a new Library class which will manage
# a collection of Game objects. Create a Library class whose initializer stores
# a games array. Ensure games is publicly accessible.
class Library
  attr_accessor :games
  def initialize(games)
    @games = games
  end
end
