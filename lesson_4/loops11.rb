# Problem: make it so this loop prints whether each 
# number is even or odd
# Data structure: none
# Questions:
# - what's the best way to write the break function
# => - better to use when or if?
# input: none
# output: "# is even/odd!"
# Alogorithm
# - intialize a coutner variable that starts with one, 
#    the first number to be printed
# - start the loop
# - use an if/then condtional to print
#   - print each number and whether it's even or odd
# - increment the counter by one with each iteration
# - break out of the loop when the counter reaches five


count = 1

loop do
  if count.odd?
    puts "#{count} is odd!"
  else
    puts "#{count} is even!"
  end
  count += 1
  break if count > 5
end