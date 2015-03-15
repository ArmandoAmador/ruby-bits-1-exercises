# Hashes Part 1
# Using ActiveSupport, return the difference between Mario's favorite games and
# Luigi's favorite games by implementing the difference_between method.

def difference_between(player1, player2)
  diff = player1.to_a - player2.to_a
  diff.to_h
end

mario_favorite = {
  sports: 'Mario Sports Mix',
  action: 'Super Mario World'
}

luigi_favorite = {
  sports: 'Golf',
  action: 'Super Mario World'
}

puts difference_between(mario_favorite, luigi_favorite)

