# Mental model:

# Given the three angles of a triangle, return whether the triangle
# is a right triangle, acute, obtuse, or invalid

# Examples/test cases:

# triangle(60, 70, 50) == :acute
# triangle(30, 90, 60) == :right
# triangle(120, 50, 10) == :obtuse
# triangle(0, 90, 90) == :invalid
# triangle(50, 50, 50) == :invalid

# input: three integers representing the three angles of a triangle
# output: :acute, :right, :obtuse, :invalid

# Explicit assumptions: 

# Do not need to consider floats
# Angles are specified in degrees

# Data structure: integers

# Algorithm:
# - define a validation method
#   - return invalid if the sum of the angles is not 180
#   - return invalid if any angle equals 0
# - define the main method
#   - call the validation method
#   - if any angle equals 90, return :right
#   - elsif any angle is greater than 90, return :obtuse
# - :acute

def valid_triangle?(angle_1, angle_2, angle_3)
  if angle_1 + angle_2 + angle_3 != 180
    return false
  elsif angle_1 == 0 || angle_2 == 0 || angle_3 == 0
    return false
  end
  true
end

def triangle(angle_1, angle_2, angle_3)
  return :invalid if valid_triangle?(angle_1, angle_2, angle_3) == false

  if angle_1 == 90 || angle_2 == 90 || angle_3 == 90
    return :right
  elsif angle_1 > 90 || angle_2 > 90 || angle_3 > 90
    return :obtuse
  end
  :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
