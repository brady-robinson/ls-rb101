def xor?(arg_1, arg_2)
  return true if arg_1 == true && arg_2 != true
  return true if arg_1 != true && arg_2 == true
  false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false