# Strings
# Implement the convert_title method to use one of String's core extension
# methods. Given the input below, this method should
# return the string 'Super Mario Bros.'

require 'active_support/all'

def convert_title(title)
  title.titleize
end

puts convert_title('super mario bros.')
