NUMBERS = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
            '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0}

def string_to_integer(string)
  array = string.chars.map { |char| NUMBERS[char] }

  integer = 0
  array.each { |num| integer = 10 * integer + num}
  integer
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570