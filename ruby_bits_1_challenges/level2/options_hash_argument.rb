# Options Hash Argument
# Defaulting two arguments to nil isn't ideal.
# Update the method signature and implementation to take an optional
# options hash with keys for :year and :system.

# def new_game(name, year=nil, system=nil)
#   {
#     name: name,
#     year: year,
#     system: system
#   }
# end
# game = new_game("Street Figher II", "SNES", 1992)

def new_game(name, options = {})
  {
    name: name,
    year: options[:year],
    system: options[:system]
  }
end

game = new_game('Street Figher II', year: 'SNES', system: 1992)

puts game
# => {:name=>"Street Figher II", :year=>"SNES", :system=>1992}
