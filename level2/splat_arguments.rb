# When passing in an array of arguments to a method, sometimes it'll
# make sense to use Ruby's "splat" operator rather than explicitly requesting an
# array. Update the describe_favorites method and the call to it to instead use
# the splat operator.

# def describe_favorites(games)
#   for game in games
#     puts "Favorite Game: #{game}"
#   end
# end
# describe_favorites(['Mario', 'Contra', 'Metroid'])

def describe_favorites(*games)
  games.each do |game|
    puts "Favorite Game: #{game}"
  end
end

describe_favorites('Mario', 'Contra', 'Metroid')
