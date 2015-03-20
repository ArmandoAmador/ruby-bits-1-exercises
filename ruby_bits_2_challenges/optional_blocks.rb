# Optional Blocks
# Implement this list method that takes an optional block.
# If a block is passed, yield each game to the block and print the
# result. If there is no block, print each game's name.

class Library
  attr_accessor :games

  def initialize(games)
    @games = games
  end

  def list
    games.each do |game|
      if block_given?
        puts yield game
      else
        puts game.name
      end
    end
  end
end
