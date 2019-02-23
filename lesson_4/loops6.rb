# Problem: using a while loop, print five random numbers
# between 0 and 99
# Test cases:
# Questions:
# - what is the method for selectiong random numbers?
# expected input:
# expected output: an array of five random numbers between
# 0 and 99
# implicit requirements: 
# explicit requirements:
# Algorithm:
# - initialize a numbers array
# - set a while loop that runs until the size of numbers is
#   five elements total
# - add a random number from 0 to 99 in each iteration

numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers