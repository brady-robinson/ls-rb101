# problem: write a method that takes a year as input, and outputs
# the century along with 'st', 'nd', 'rd', or 'th'

# data: integer, string
# input: integer year
# output: century string

# examples: century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# alg:
#  - first determine the century
#  - method one
#      - to determine the century, use conditional logic
#        - convert integer to string
#        - for single digit and double integers, automatically 
#          determine first century
#        - for triple digit integers and up, divide by 100, and add 1
#        - for integers that end in 0, divide by 100
#  - method two
#      - return the century
#        - use this century in more conditional logic
#         - for centuries that end in 0, 4, 5, 6, 7, 8, 9, 
#            11, 12, or 13 concat with 'th'
#         - for centuries that end in 1, concat with 'st'
#         - for centuries that end in 3, concat with 'rd'
#         - for centuries that end in 2, concat with 'nd'

def century_suffix(century)
  if century.end_with?('0', '4', '5', '6', '7', '8', '9', '11', '12', '13')
    century + 'th'
  elsif century.end_with?('1')
    century + 'st'
  elsif century.end_with?('2')
    century + 'nd'
  elsif century.end_with?('3')
    century + 'rd'
  end
end
    
def century_conversion(year)
  string_year = year.to_s
  if string_year.end_with?('0')
    "#{string_year.to_i/100}"
  elsif string_year.size == 1 || string_year.size == 2
    '1'
  elsif string_year.size >= 3
    "#{(string_year.to_i/100) + 1}"
  end
end

def century(integer)
  century_suffix(century_conversion(integer))
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
