NUMBERS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3',
            4 => '4', 5 => '5', 6 => '6', 7 => '7',
            8 => '8', 9 => '9' }

def signed_integer_to_string(integer)
  return '0' if NUMBERS[integer] == '0'
  if integer > 0
    integer.digits.reverse.map {|num| NUMBERS[num]}.join.prepend("+")
  else
    integer = integer * -1
    integer.digits.reverse.map {|num| NUMBERS[num]}.join.prepend("-")
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'