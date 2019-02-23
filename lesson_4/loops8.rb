# problem: print each element using an until loop
# questions: how will using until affect code?
#            should I use a counter?           
# expected output: each element in the array
# algorithm:
# - set numbers as an array of five given numbers
# - start the until loop
#   - run the loop until numbers.size == 0
# - print the result of the first element removed from the array



numbers = [7, 9, 13, 25, 18]
counter = 0

until counter == numbers.size
  puts numbers[counter]
  counter += 1
end
