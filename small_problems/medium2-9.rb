# problem: calculate the next value that is a multiple of 7, 
# is odd, and does not contain repeated digits

# data: integer

# input: one integer
# output: one integer that fits the desctiption in the problem

# alg: 
# - use an iterative method/loop that adds 7 n times to integer
# - create a method to validate each result
# - if result is valid, return result

def valid_featured_number?(integer)
  (integer % 7 == 0) && (integer.digits.size == integer.digits.uniq.size) && (integer.odd?)
end

def featured(integer)
  current = integer
  loop do 
    current += 1
    break if valid_featured_number?(current)
    break if current >= 9_876_543_210
  end
  return "There is no possible number that fulfills those requirements." if current >= 9_876_543_210
  current
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
#p featured(999_999) == 1_023_547
#p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)
