require 'pry'

DATA = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 
5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}

def integer_to_string(integer)
  array = integer.digits.map {|digit| DATA[digit]}.reverse

  value = ''
  array.each do |num| 
    value = value + num
  end
  value
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'