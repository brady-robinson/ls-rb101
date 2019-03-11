# problem: order an array of number strings in descending order
# tests: none
# data: array
# alg:
# call a method map
# in the block, call the method to_i
# then call sort
# then call reverse
# then call to_s

arr = ['10', '11', '9', '7', '8']

arr2 = arr.sort do |a,b|
  b.to_i <=> a.to_i
end

p arr2