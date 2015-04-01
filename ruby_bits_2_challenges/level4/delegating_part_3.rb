# delegating_part_3
# Refactor the following code to use Ruby's
# built in SimpleDelegator.
require 'delegate'

class Library < SimpleDelegator
  def initialize(console)
    super(console)
  end
end

