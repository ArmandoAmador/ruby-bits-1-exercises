# Arrays part 1
# Implement the last_games method below to return the games from the passed
# index to the end of the list. Try using Array#from to return all games
# starting from 'Contra'. Also change the call to last_games to pass in
# the correct index.

require 'active_support/all'

def last_games(games, index)
  games.from(index)
end

games = ['Super Mario Bros.', 'Contra', 'Metroid', 'Mega Man 2']

puts last_games(games, 1)
# => ['Contra', 'Metroid', 'Mega Man 2']
