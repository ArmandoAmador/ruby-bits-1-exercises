# activesupport_concern_part
# Call the included method from inside the LibraryUtils module and pass in a
# block that calls the load_game_list class method.

# original
# module LibraryUtils

#   extend ActiveSupport::Concern

#   def add_game(game)
#   end

#   def remove_game(game)
#   end

#   module ClassMethods
#     def search_by_game_name(name)
#     end

#     def load_game_list
#     end
#   end
# end

require 'active_support/all'

module LibraryUtils

  extend ActiveSupport::Concern

  included do
    load_game_list
  end

  def add_game(game)
  end

  def remove_game(game)
  end

  module ClassMethods
    def search_by_game_name(name)
    end

    def load_game_list
    end
  end
end
