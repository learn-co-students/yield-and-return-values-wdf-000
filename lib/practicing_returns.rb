require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    # binding.pry
    collection << yield(array[i])
    i += 1
  end

  # here we return collection with all the elements already yielded
  collection
end

# binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
