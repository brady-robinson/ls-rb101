# Problem: Hello is printed once and it needs to be printed five times
# Test cases:
# Questions:
# - how do I control flow with boolean values instead of integers?
# - add a counter that causes boolean to shift to false
# expected input:
# expected output: 'Hello' five times
# implicit requirements: say_hello remains true until five iterations
# explicit requirements:
# Alogorithm:

say_hello = true
counter = 0

while say_hello
  puts 'Hello!'
  counter += 1
  say_hello = false if counter == 5
end
