# problem: problem 1: calculate range of numbers from 1 to input
#                      - save these numbers in an array
#          problem 2: perform an operation on these numbers
#          input: integer
#                 determination of math operation
#          output:the result of the operation
#          implicit/explicit reqs: do I need to validate input or 
#                                  consider non-relevant input?
# tests: NA
# data: array
# alg:
# - create a range from one to integer based on user input
# - reduce the resulting array using operation from input
# - return this result to the user

puts ">> Please enter an integer greater than 0:"
integer = gets.chomp.to_i

operation = ''
operation_name = ''
sum = 0
result = 0

loop do 
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp.downcase

  array = (1..integer).to_a
  if operation == 's'
    result = array.reduce(:+)
    operation_name = 'sum'
  elsif operation == 'p'
    result = array.reduce(:*)
    operation_name = 'product'
  else
    puts "Invalid input."
    next
  end
  break
end

puts "The #{operation_name} of the integers between 1 and #{integer} is #{result}."
