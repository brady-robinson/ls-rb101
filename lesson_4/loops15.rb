# problem: input should be added to numbers, break loop 
#          when numbers array contains five elements
# test cases: NA
# questions: 
# - should size of numbers array be set to 4 or 5?
# data structure: array
# input: integer
# output: five integers, without array
# implicit requirements: only integers should be added
# explicit requirements: the user should only input integers
# algorithm:
# - intialize empty numbers array
# - start loop
#    - ask use for input
#    - gets input and convert it to an integer
#    - if bad input print "invalid..." and loop again
#      without adding the input to the array
#       - use validation method to determine this
#       - define the validation method according to 
#         whether the input can be converted back and fourth
#    - else add input to numbers array and loop again
#`   - break if array size equals five (or is it four?)
# - print the five numbers from numbers array

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.to_i
  if input != 0
    numbers << input
  else
    puts "Invalid input. Please enter non-zero integers only."
  end
  break if numbers.size == 5
end

puts numbers