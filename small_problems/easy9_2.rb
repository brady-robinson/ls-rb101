# problem: method returns 2X integer unless integer is double number

# data: integer

# questions: 
# - how do I determine whether it's a double number?

# examples:
# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10

# alg: 
# - if the integer contain an even number of digits, split in 
#   half and reverse each half to check if double number
#     - put this into a method of it's own
# - if this method returns false, or else the integer otherwise 
#   contains an odd number of digits, multiply by two

def double?(integer)
  string = integer.to_s
  index = (integer.to_s.size / 2) - 1
  string[0..index] == string[index + 1..-1]
end

def twice(integer)
  if integer.to_s.size.even? && double?(integer)
    integer
  else
    integer * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
