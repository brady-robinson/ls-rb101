NUMBERS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
'5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_integer(string)
  array = string.chars.map {|char| NUMBERS[char]}

  value = 0
  array.each {|num| value = 10 * value + num}
  value
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570