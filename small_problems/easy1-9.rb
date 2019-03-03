# problem: return the sum of a the digits of a positive integer
# data structure: array
# restrictions: no looping construct allowed
# algorith:
# - define a method that takes a positive integer
# - call the digits method on the integer, then the reduce method
#   to add the elements of the resulting array

def sum(integer)
  integer.digits.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
