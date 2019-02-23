# Problem: loop should stop if number is between 0 and 10
# test cases: none
# Questions:
# - How will I determine whether the number is between 0 and 10?
# Data structure: NA
# Input: none
# output: A bunch of numbers less than 100,
#         the last of which between 0 and 10
# implicit req: break when number is between 0 and 10
# algorithm:
# - start loop
# - initialize a number variable that equals a random
#    number less than one hundred
# - print this number
# - break out of the loop if the number's between 0 and 10



loop do
  number = rand(100)
  puts number
  break if number < 10
end