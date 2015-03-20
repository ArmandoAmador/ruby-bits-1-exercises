# Using Short-Circuit Evaluation can clean up your code a great deal. Update
# the following method to use short circuit evaluation. While you're at it,
# why not try reducing the entire method to one line?

# def search_index(games, search_term)
#   search_index = games.find_index(search_term)

#   if search_index
#     search_index
#   else
#     "Not Found"
#   end
# end

def search_index(games, search_term)
  games.find_index(search_term) || "Not Found"
end
