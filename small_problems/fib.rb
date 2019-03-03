# problem: calculate nth fibonacci number
# data structure: array
# algorithm: 
# - define a method that takes an integer as argument
# - initialize an array with 0,1 as elements
# - initialize a counter variable set to 0
# - initialize a current element variable
# - loop do 
  # - current element equals array at counter plus array at counter plus one
  # - array shoveled in current element
  # - counter += 1
  # - break if counter is greater than or equal to integer
# - return the array at counter element

def nth_fibonacci(integer)
  array = [0,1]
  counter = 0
  current_element = 0
  loop do 
    current_element = array[counter] + array[counter + 1]
    array << current_element
    counter += 1
    break if counter == integer
  end
  array[integer - 1]
end

puts nth_fibonacci(5)
puts nth_fibonacci(6)
puts nth_fibonacci(7)
puts nth_fibonacci(20)
puts nth_fibonacci(11)


