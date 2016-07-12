require 'pry'

def hello(array)
  temp_array = []
  i = 0
  while i < array.length
    temp_array << yield(array[i])
    i += 1
  end
  temp_array
end


hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
