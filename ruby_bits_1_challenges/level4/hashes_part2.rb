# Hashes part 2
# Implement the exclude_character method below to return characters except the
# passed in character. Use ActiveSupport to return these key/pair values. Also,
# change the call to exclude_character so that yoshi's games are excluded.

require 'active_support/all'

def exclude_character(games, character)
  games.except(character)
end

games = {
  mario: ["Super Mario World", "Super Smash Bros. Melee"],
  luigi: ["Luigi's Mansion"],
  yoshi: ["Yoshi's Island", "Yoshi's Story"]
}

puts exclude_character(games, :yoshi)
