# activesupport_concern_part1
# Now refactor the following code to use
# ActiveSupport::Concern's ability to expose class methods from a module.
# original
# module LibraryUtils

#   def self.included(base)
#     base.extend(ClassMethods)
#   end

#   def add_game(game)
#   end

#   def remove_game(game)
#   end

#   module ClassMethods
#     def search_by_game_name(name)
#     end
#   end
# end

require 'active_support/all'

module LibraryUtils
  extend ActiveSupport::Concern

  def add_game(game)
  end

  def remove_game(game)
  end

  module ClassMethods
    def search_by_game_name(name)
    end
  end
end
