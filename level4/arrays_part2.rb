# Arrays part 2
# We have a last_games method, but we need a first_games method as well.
# Use Array#to to return the list of games up to Metroid. Also change
# the call to first_games to take in the correct index.

require 'active_support/all'

def first_games(games, index)
  games.to(index)
end

games = ['Super Mario Bros.', 'Contra', 'Metroid', 'Mega Man 2']

puts first_games(games, 2)
# => ['Super Mario Bros.', 'Contra', 'Metroid']
