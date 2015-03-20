# Hook Methods
# Define a new self.included method hook for the LibraryUtils module which
# will extend the ClassMethods on the passed in class. Also, since we'll now
# be extending ClassMethods when LibraryUtils is included, remove duplicate
# code in the AtariLibrary class.

# Original
# module LibraryUtils

#   def add_game(game)
#   end

#   def remove_game(game)
#   end

#   module ClassMethods
#     def search_by_game_name(name)
#     end
#   end
# end

# class AtariLibrary
#   include LibraryUtils
#   extend LibraryUtils::ClassMethods
# end


module LibraryUtils

  def self.included(base)
    base.extend(ClassMethods)
  end

  def add_game(game)
  end

  def remove_game(game)
  end

  module ClassMethods
    def search_by_game_name(name)
    end
  end
end

class AtariLibrary
  include LibraryUtils
end
