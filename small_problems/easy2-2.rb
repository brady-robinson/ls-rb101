# UP: ask user for length and width of a room in meters, and
#     print a string that gives area in square meters and square feet
    # input: two integers, one for length and one for width in meters
      # do i need to validate these inputs? No
    # output: area of room in square meters and square feet
    # requirements: 
      # explicit: two integers
      # implicit: calculation of area 
              #   conversion of square meters to square feet
                # is it better to convert before square meters found?
                  # 1 meter = 3.28 feet
# examples: NA
# data: numbers
# alg:
  # ask the user for the width
    # save to a variable
  # ask the user for the length
    # save to a variable
  # convert both of these numbers into feet
    # save to two new variables
  # perform calauclation for area
    # save to a new variable, one for meters
    # another for feet
  # print the results


puts '=> Welcome to the area calculator.'
puts '=> Enter the length of the room in meters:'
length_meters = gets.chomp.to_f
length_feet = length_meters * 3.28
puts '=> Enter the width of the room in meters:'
width_meters = gets.chomp.to_f
width_feet = width_meters * 3.28

area_meters = length_meters * width_meters
area_feet = length_feet * width_feet

puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)."

