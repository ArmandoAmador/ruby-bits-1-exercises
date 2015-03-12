# If no search is entered, we'll display all games. Notice the first line below
# where we're setting search to an empty string? Change this to use
# conditional assignment.

# search = "" unless search
# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# matched_games = games.grep(Regexp.new(search))
# puts "Found the following games..."
# matched_games.each do |game|
#   puts "- #{game}"
# end

search ||= ''
games = ['Super Mario Bros.', 'Contra', 'Metroid', 'Mega Man 2']
matched_games = games.grep(Regexp.new(search))
puts 'Found the following games...'
matched_games.each do |game|
  puts "- #{game}"
end
