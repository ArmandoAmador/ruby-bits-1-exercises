# Multiple Lambdas
# Refactor exec_game to take a second Proc argument for error handling purposes.
# If calling the action Proc raises an exeption, call the new error Proc.
# We've already modified the code in main.rb to create the error Proc and
# pass it to exec_game. Hint: You'll want to add a begin/rescue/end
# block around action.call.

class Library
  attr_accessor :games

  def initialize(games)
    @games = games
  end

  def exec_game(name, action, error)
    game = games.detect { |game| game.name == name }
    begin
      action.call(game)
    rescue
      error.call
    end
  end
end
