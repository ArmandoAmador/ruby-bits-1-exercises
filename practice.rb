# # # blocks

# # array = [1, 2, 3, 4]

# # array.collect! do |n|
# #   n**2
# # end

# # puts array.inspect
# # # => [1, 4, 9, 16]

# # class Array
# #   def iterate!
# #     each_with_index do |n, i|
# #       self[i] = yield(n)
# #     end
# #   end
# # end

# # array = [1, 2, 3, 4]

# # array.iterate! do |n|
# #   n**2
# # end

# # puts array.inspect
# # # => [1, 4, 9, 16]

# # class Array
# #   def iterate!(&code)
# #     each_with_index do |n, i|
# #       self[i] = code.call(n)
# #     end
# #   end
# # end

# # array = [1, 2, 3, 4]

# # array.iterate! do |n|
# #   n**2
# # end

# # puts array.inspect

# # def what_am_i(&block)
# #   block.class
# # end

# # puts what_am_i {}

# # class Array
# #   def iterate!(code)
# #     each_with_index do |n, i|
# #       self[i] = code.call(n)
# #     end
# #   end
# # end

# # array_1 = [1, 2, 3, 4]
# # array_2 = [2, 3, 4, 5]

# # square = proc do |n|
# #   n**2
# # end

# # array_1.iterate!(square)
# # array_2.iterate!(square)

# # puts array_1.inspect
# # puts array_2.inspect

# # class Array
# #   def iterate!(code)
# #     each_with_index do |n, i|
# #       self[i] = code.call(n)
# #     end
# #   end
# # end

# # array = [1, 2, 3, 4]

# # array.iterate!(proc do |n|
# #   n**2
# # end)

# # puts array.inspect

# # def callbacks(procs)
# #   procs[:starting].call

# #   puts 'Still going'

# #   procs[:finishing].call
# # end

# # callbacks(starting: proc { puts 'Starting' },
# #           finishing: proc { puts 'Finishing' })

# # # Lambdas

# # class Array
# #   def iterate!(code)
# #     self.each_with_index do |n, i|
# #       self[i] = code.call(n)
# #     end
# #   end
# # end

# # array = [1, 2, 3, 4]

# # array.iterate!(lambda { |n| n**2 })

# # puts array.inspect

# # # def args(code)
# # #   one, two = 1, 2
# # #   code.call(one, two)
# # # end

# # # args(Proc.new{|a, b, c| puts "Give me a #{a} and a #{b} and a #{c.class}"})

# # # args(lambda{|a, b, c| puts "Give me a #{a} and a #{b} and a #{c.class}"})

# # def proc_return
# #   Proc.new { return "Proc.new"}.call
# #   return "proc_return method finished"
# # end

# # def lambda_return
# #   lambda { return "lambda" }.call
# #   return "lambda_return method finished"
# # end

# # puts proc_return
# # puts lambda_return

# # class Tweet
# #   def method_missing(method_name, *args)
# #     puts "You tried to call #{method_name} with these arguments: #{args}"
# #   end
# # end

# # Tweet.new.submit(1, "Here's a tweet")

# # class Tweet
# #   def method_missing(method_name, *args)
# #     logger.warn "You tried to call #{method_name} with thse arguments: #{args}"
# #     super
# #   end
# # end

# # Tweet.new.submit(1, "Here's a tweet.")

# # class Tweet
# #   def initialize(user)
# #     @user = user
# #   end

# #   def username
# #     @user.username
# #   end

# #   def avatar
# #     @user.avatar
# #   end
# # end

# # class Tweet
# #   def initialize(user)
# #     @user = user
# #   end

# #   def method_missing(method_name, *args)
# #     @user.send(method_name, *args)
# #   end
# # end


# # class Tweet
# #   DELEGATED_METHODS = [:username, :avatar]

# #   def initialize(user)
# #     @user = user
# #   end

# #   def method_missing(method_name, *args)
# #     if DELEGATED_METHODS.include?(method_name)
# #       @user.send(method_name, *args)
# #     else
# #       super
# #     end
# #   end
# # end


# # require 'delegate'

# # class Tweet < SimpleDelegator
# #   def initialize(user)
# #     super(user)
# #   end
# # end

# # class Tweet
# #   def initialize(text)
# #     @text = text
# #   end

# #   def to_s
# #     @text
# #   end

# #   def method_missing(method_name, *args)
# #     match = method_name.to_s.match(/^hash_(\w+)/)
# #     if match
# #       @text << ' #' + match[1]
# #     else
# #       super
# #     end
# #   end
# # end

# # tweet = Tweet.new('Sponsored by')
# # tweet.hash_ruby
# # tweet.hash_metaprogramming
# # puts tweet


# # class Tweet
# #   ...
# #   def respond_to?(method_name)
# #     method_name =~ /^hash_\w+/ || super
# #   end
# # end


# def method_missing(method_name, *args)
#   match = method_name.to_s.match(/^hash_(\w+)/)
#   if match
#     @text << " #" + match[1]
#   else
#     super
#   end
# end

# tweet.hash_codeschool
# tweet.hash_codeschool


# def method_missing(method_name, *args)
#   match = method_name.to_s.match(/^hash_(\w+)/)
#   if match
#     self.class.class_eval do
#       define_method(method_name) do
#         @text << " #" + match[1]
#       end
#     end
#     senf(method_name)
#   else
#     super
#   end
# end
