# problem: determine whether the sixth integer
# input by use appears among the first five integers input
# by user

# data: array
# input: integers
# output: prompts for user to input integers
#         message regarding the sixth input from user
#           whether or not it is a repeat of 1-5

# alg: 
#  - each user input should be shoveled into an array
#  - the sixth and final input should be tested as to 
#       whether the array contains that integer
#      - do not add the final integer to the array
#      - if the array contains that integer
#         - print a message saying so
#      - if the array does not contain the integer
#         - print a different message message
#      - in either case, also print the array of five elements 

def prompt(string)
  puts "=> #{string}"
end

arr = []

prompt("Enter the 1st number:")
first_number = gets.chomp.to_i
arr << first_number

prompt("Enter the 2nd number:")
second_number = gets.chomp.to_i
arr << second_number

prompt("Enter the 3rd number:")
third_number = gets.chomp.to_i
arr << third_number

prompt("Enter the 4th number:")
fourth_number = gets.chomp.to_i
arr << fourth_number

prompt("Enter the 5th number:")
fifth_number = gets.chomp.to_i
arr << fifth_number

prompt("Enter the last number:")
last_number = gets.chomp.to_i

if arr.include?(last_number)
  puts "The number #{last_number} appears in #{arr}."
else
  puts "The number #{last_number} does not appear in #{arr}."
end
