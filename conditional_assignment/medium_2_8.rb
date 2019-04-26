# Problem:

# Given an integer, the task is to find and return the next featured
# number higher than the integer. A featured number is defined
# as being odd, has unique digits, and is a multiple of 7. 

# Examples/test cases:

# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# input: integer
# output: integer

# Data structure: integer

# Algorithm:
# - start a count variable at 0
#   - break if count is greater than or equal to 9_999_999_999
#   - incrementally add 7 to count
#   - if count is odd and count % 7 equals 0, the digits
#     of count are unique, and count is greater than
#     integer, return count
#       - to determine uniquness, calls digits on integer and then 
#         call uniq on digits and use the equals to check whether
#         this value is the same as the non-unique value
# - "there is no possible number that..."

def featured(integer)
  count = 0

  loop do 
    break if count >= 9_999_999_999
    count += 7
    if count.odd? && count % 7 == 0 && count.digits.uniq == count.digits && count > integer
      return count
    end
  end
  "There is no possible number that fulfills those requirements."
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements