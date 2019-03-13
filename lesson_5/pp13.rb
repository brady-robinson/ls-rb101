# problem: sort the sub arrays according to their odd integers
#          how to get only odd integers to appear in sort?
# structure: array
# alg:
# use each to iterate so that original array gets returned
# 

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr2 = arr.sort_by do |sub_array|
  sub_array.select do |num|
    num.odd?
  end
end

p arr2