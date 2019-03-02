def is_odd?(integer)
  integer.remainder(2) == 1 || integer.remainder(-2) == -1
end

puts is_odd?(2)
puts is_odd?(3)
puts is_odd?(-10)
puts is_odd?(0)