# method_missing_part_1
# Implement method_missing on the Library class so that it prints
# the name of any nonexistent method that is called.
class Library
  def method_missing(method_name)
    puts method_name
  end
end
