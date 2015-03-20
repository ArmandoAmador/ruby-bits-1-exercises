# Dates
# Implement the anniversary method below to return a DateTime representing the
# given number of years after the game's release date.

require 'active_support/all'

def anniversary(game, years)
  game[:release].advance(years: years)
end

game = {
  name: 'Contra',
  release: DateTime.new(1987, 2, 20, 0, 0, 0)
}

puts anniversary(game, 20)
# => "2007-02-20T00:00:00+00:00"
