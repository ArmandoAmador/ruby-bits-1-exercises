# class_eval_part_2
# Implement the make_available method so that it uses class_eval to define a
# lend_to_[user] method. When we call make_available(Game, "gregg"), we expect
# an instance method of lend_to_gregg to be created on the Game class.
class LibraryManager
  def self.make_available(klass, user)
    klass.class_eval do
      define_method "lend_to_#{user}" do
      end
    end
  end
end

class Game
  def self.find_by_title(name)
  end
end

LibraryManager.make_available(Game, "gregg")
