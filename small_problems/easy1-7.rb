# problem: define a method that takes an integer and
#          returns a string of ones and zeros the length of integer
# data structure: none
# algorithm: 
# - def method
# - initialize an empty string
# - integer.times do
#     - if string size is 0
#       - empty string shovel in one
#     - elsif string.last == '1'
#       - string shovel zero
#     - else
#       - string shovel one
#     - end
# - return the string

def stringy(integer)
  string = ''
  integer.times do 
    if string.size == 0
      string << '1'
    elsif string.end_with?('1')
      string << '0'
    else 
      string << '1'
    end
  end
  string
end
      

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'