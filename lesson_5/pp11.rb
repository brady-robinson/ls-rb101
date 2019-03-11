# problem: return integers that are mulitples of 3, leaving 
# the original in its current form
# data: array
# alg:
# method call map to get each array
#  in block method call select
#   criteria is that number has to be evenly divisible by 3

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr2 = arr.map do |element|
        element.select do |item|
          item % 3 == 0
        end
      end

p arr2