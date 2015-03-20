# blocks

array = [1, 2, 3, 4]

array.collect! do |n|
  n**2
end

puts array.inspect
# => [1, 4, 9, 16]

class Array
  def iterate!
    each_with_index do |n, i|
      self[i] = yield(n)
    end
  end
end

array = [1, 2, 3, 4]

array.iterate! do |n|
  n**2
end

puts array.inspect
# => [1, 4, 9, 16]

class Array
  def iterate!(&code)
    each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end

array = [1, 2, 3, 4]

array.iterate! do |n|
  n**2
end

puts array.inspect

def what_am_i(&block)
  block.class
end

puts what_am_i {}

class Array
  def iterate!(code)
    each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end

array_1 = [1, 2, 3, 4]
array_2 = [2, 3, 4, 5]

square = proc do |n|
  n**2
end

array_1.iterate!(square)
array_2.iterate!(square)

puts array_1.inspect
puts array_2.inspect

class Array
  def iterate!(code)
    each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end

array = [1, 2, 3, 4]

array.iterate!(proc do |n|
  n**2
end)

puts array.inspect

def callbacks(procs)
  procs[:starting].call

  puts 'Still going'

  procs[:finishing].call
end

callbacks(starting: proc { puts 'Starting' },
          finishing: proc { puts 'Finishing' })

# Lambdas

class Array
  def iterate!(code)
    self.each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end

array = [1, 2, 3, 4]

array.iterate!(lambda { |n| n**2 })

puts array.inspect

# def args(code)
#   one, two = 1, 2
#   code.call(one, two)
# end

# args(Proc.new{|a, b, c| puts "Give me a #{a} and a #{b} and a #{c.class}"})

# args(lambda{|a, b, c| puts "Give me a #{a} and a #{b} and a #{c.class}"})

def proc_return
  Proc.new { return "Proc.new"}.call
  return "proc_return method finished"
end

def lambda_return
  lambda { return "lambda" }.call
  return "lambda_return method finished"
end

puts proc_return
puts lambda_return
