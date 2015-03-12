# One of the most common places to use conditional returns is within methods.
# Refactor the code below, removing the search_result variable all together.

# def search(games, search_term)
#   search_index = games.find_index(search_term)
#   search_result = if search_index
#     "Game #{search_term} found: #{games[search_index]} at index #{search_index}."
#   else
#     "Game #{search_term} not found."
#   end
#   return search_result
# end

# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# puts search(games, "Contra")

def search(games, search_term)
  search_index = games.find_index(search_term)
  if search_index
    "Game #{search_term} found: #{games[search_index]} at index #{search_index}."
  else
    "Game #{search_term} not found."
  end
end

games = ['Super Mario Bros.', 'Contra', 'Metroid', 'Mega Man 2']
puts search(games, 'Contra')
