# delegating_part_2
# Change method_missing on the Library class so that it only delegates to
# @manager if the method name contains the string 'atari'.
# Otherwise, call super.

class Library
  def initialize(console)
    @manager = console
  end

  def method_missing(name, *args)
    if name.to_s =~ /atari/
      @manager.send(name, *args)
    else
      super
    end
  end
end
