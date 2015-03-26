# Proc to Block
# Move the code in the each block into a Proc, and then pass that Proc into
# library.each

library = Library.new(GAMES)
printed = lambda { |game| puts "#{game.name} (#{game.system}) - #{game.year}" }
library.each(&printed)
