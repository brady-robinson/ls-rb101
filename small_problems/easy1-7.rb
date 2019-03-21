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

def stringy(size, start=1)
  numbers = []

  size.times do |index|
    if start == 1
      number = index.even? ? 1 : 0
      numbers << number
    elsif start == 0
      number = index.odd? ? 1 : 0
      numbers << number
    end
  end

  numbers.join
end
      

puts stringy(6) == '101010'
puts stringy(9,0) == '101010101'
puts stringy(4) == '1010'
puts stringy(7,0) == '1010101'
