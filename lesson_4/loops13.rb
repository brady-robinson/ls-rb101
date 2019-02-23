# Problem: make a loop that prints a string if
#           a variable randomly evalutes true or false
# test cases: none
# data structure: array of true or false 
# questions: 
# - what is the best way to insert an if/else statement in 
#   a loop?
# input: none
# output: one of two strings
# algorithm:
# - initialize the process the loop variable that is either true/false
#     - points to an array that samples from true/false
# - start the loop
#     - if variable is true
#          - print one thing
#     - else
#          - print another thing
# - break out of the loop no matter what

process_the_loop = [true, false].sample

if process_the_loop
  loop do 
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end