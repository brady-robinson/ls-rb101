# problem: destructively double numbers in an array
# test cases: none
# data structure: array
# output: the altered array
# algorithm:
# - define doubled_numbers!(numbers)
# - initalize a counter variable
# - start a loop
#    - break if counter equals numbers array length
#    - shift the current number and set is as a current_number
#      variable using the counter
#    - double the current_number and shovel it back 
#       into original array
#    - incrememnt the counter
# - return the array

def doubled_numbers!(numbers)
  counter = 0

  loop do 
    break if counter == numbers.size
    
    numbers[counter] *= 2

    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p doubled_numbers!(my_numbers)
p my_numbers
