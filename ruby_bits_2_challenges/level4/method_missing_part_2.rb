# method_missing_part_2
# Update method_missing so that it also prints the arguments that were passed to
# the nonexistent method.
class Library
  def method_missing(method_name, *args)
    puts "#{method_name} #{args}"
  end
end
