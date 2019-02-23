# problem: the loop only iterates once. I want it to iteration five times. 
# test cases: NA
# Questions:
# - should I use break if or break when
# Expected input: NA
# Expected output: "Number of iteratons = #" five times
# Explicit Requirements: exit loop after fifth iteration or at the start of the sixth
# Implicit Requirements: NA
# Algorithm:


iterations = 1

loop do
  break if iterations == 6
  puts "Number of iterations = #{iterations}"
  iterations += 1
end