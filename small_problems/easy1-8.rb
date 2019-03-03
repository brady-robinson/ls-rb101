#problem: take average of all numbers in an array
#data structure: array
# algorithm: 
# - def a method that takes an array of integers as its argument
# - initialize a sum variable
# - use the .each method to iterate 
# - set a sum variable equal to current element plus next current elemtn
# - return the sum variable divided by array count

def average(array)
  sum = array.reduce(:+)
  sum.to_f / array.size.to_f
end

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])