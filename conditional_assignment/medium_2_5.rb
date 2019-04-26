# Mental model:

# Given the lengths of three sides of a triangle, return the 
# type of triange: equilater, scalene, isosceles, or invalid. 

# Examples/test cases:

# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid

# input: three sides of a triangle represented as integers
# output: :equilateral, :isosceles, :scalene, :invalid

# Data structure: integers

# Algorithm:
# - define a validation method that returns invalid of triangle
#   has either a side equal to length zero or if the sum of the two 
#   shortest sides is not greater than the length of the longest side
#   - place the sides into an array and sort the array
#   - do this by running the sides through a conditional
#     - if side one, side two, or side three equals 0 return :invalid
#     - elsif array[0] plus array [1] <+ array[2] return :invalid
# - define the main method
# - first use the validation method to return invalid if applicable
# - use three conditionals to test the triangle type
#   - if side one equals side two, and side one equals side three 
#     return equilateral
#   - elsif side one does not equal side two and side one does not
#     equal side three and side two does not equal side three return
#     scalene
#   - else isosceles

def valid_triangle?(side_1, side_2, side_3)
  array = [side_1, side_2, side_3].sort
  if side_1 == 0 || side_2 == 0 || side_3 == 0
    return false
  elsif array[0] + array[1] < array[2]
    return false
  end
  true
end

def triangle(side_1, side_2, side_3)
  return :invalid if valid_triangle?(side_1, side_2, side_3) == false

  if side_1 == side_2 && side_1 == side_3
    return :equilateral
  elsif side_1 != side_2 && side_1 != side_3 && side_2 != side_3
    return :scalene
  end
  :isosceles
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
