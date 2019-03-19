DATA = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 
5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}

def signed_integer_to_string(integer)
  if integer > 0 
    array = integer.digits.map {|digit| DATA[digit]}.reverse

    value = ''
    array.each do |num| 
      value = value + num
    end
    value.prepend('+')
  elsif integer < 0
    integer_absolute = integer * -1
    array = integer_absolute.digits.map {|digit| DATA[digit]}.reverse

    value = ''
    array.each do |num| 
      value = value + num
    end
    value.prepend('-')
  else
    '0'
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'