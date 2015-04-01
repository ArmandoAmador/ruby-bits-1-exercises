# delegating_part_1
# Implement method_missing to delegate all unknown method calls to the
# Library's @manager object. Make sure to pass along any arguments as well.

class Library
  def initialize(console)
    @manager = console
  end

  def method_missing(name, *args)
    @manager.send(name, *args)
  end
end
