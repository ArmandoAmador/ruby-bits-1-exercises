# define_method
# Refactor this code, iterating the SYSTEMS array and using define_method to
# replace the separate definitions of the runs_on_[system]? methods. Hint:
# You'll want to use downcase on the system names when
# building names for the methods.

# class Game
#   SYSTEMS = ['SNES', 'PS1', 'Genesis']

#   attr_accessor :name, :year, :system

#   def runs_on_snes?
#     self.system == 'SNES'
#   end

#   def runs_on_ps1?
#     self.system == 'PS1'
#   end

#   def runs_on_genesis?
#     self.system == 'Genesis'
#   end
# end

class Game
  SYSTEMS = ['SNES', 'PS1', 'Genesis']

  attr_accessor :name, :year, :system

  SYSTEMS.each do |system|
    define_method "runs_on_#{system.downcase}?" do
      self.system == system
    end
  end
end
