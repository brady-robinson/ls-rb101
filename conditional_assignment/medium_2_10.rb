# Problem:

# Given an integer, calculate the difference of the first n positive
# integers squared up the integer and the square of first n positive 
# integers up to integer

# Examples/test cases:

# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

# Data structure: integers

# Algorithm:
# - initialize an empty array
# - set a variable equal to 
#   - for each integer in one up to integer
#     - array << integer
# - set a new variable equal to the array reduced using addition and
#   squared
# - initialize another empty array
# - set a variable equal to 
#   - for each integer in one up to integer
#     - array << integer squared
# - set a new variable equal to array reduce with addition
# - subtract variable two from variable one

def sum_square_difference(integer)
  array = []
  1.upto(integer) { |num| array << num }
  sum_squared = array.reduce(:+)**2

  array = []
  1.upto(integer) { |num| array << num**2 }
  squared_sums = array.reduce(:+)

  sum_squared - squared_sums
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

