require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end


names = hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
puts names.to_s
