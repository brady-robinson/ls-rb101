NUMBERS = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
           '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0}

def string_to_signed_integer(string)
  characters = string.chars
  multiplier = 1

  if characters.first == '-'
    multiplier = -1
    characters.shift
  elsif characters.first == '+'
    characters.shift
  end

  array = characters.map { |char| NUMBERS[char] }

  integer = 0
  array.each { |num| integer = 10 * integer + num}
  integer * multiplier
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100