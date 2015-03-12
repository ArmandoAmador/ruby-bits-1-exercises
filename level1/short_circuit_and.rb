# Let's clean up our code to make it search within each game title and show all
# the results. If it's an exact match, we'll show something special. Clean up
# the code below to short circuit the if statement.

# search = "Super Mario Bros."
# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# matched_games = games.grep(Regexp.new(search))

# # Found an exact match
# if matched_games.length > 0
#   if matched_games.include?(search)
#     puts "Game #{search} found."
#   end
# end

search = 'Super Mario Bros.'
games = ['Super Mario Bros.', 'Contra', 'Metroid', 'Mega Man 2']
matched_games = games.grep(Regexp.new(search))

# Found an exact match
if matched_games.length > 0 && matched_games.include?(search)
  puts "Game #{search} found."
end
