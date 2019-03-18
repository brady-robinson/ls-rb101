# problem: write a method that returns true if exactly one
# of it arguments is is truthy, false otherwise

# data: NA
# input: two arguments
# output: none
# return value: boolean

# alg: 
#  - use a conditional that alternates as so:
#     - if a is true and b is false
#        - true
#     - else if opposite
#       - true
#     - else
#       - false

def xor?(one, two)
  if ((one == true) && (two == false))
    true
  elsif ((one == false) && (two == true))
    true
  else
    false
  end
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
