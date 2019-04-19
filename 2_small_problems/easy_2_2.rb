SQ_METERS_TO_FEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

sq_meters_area = (length * width).round(2)

puts "The area of the room is #{sq_meters_area} square meters (#{(sq_meters_area * SQ_METERS_TO_FEET).round(2)} square feet)."