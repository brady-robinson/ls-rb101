# problem: return same structure with each sub array 
# order in descending order
# data: array 
# alg: 
# method call map 
#  in the block method call sort with two variables
#    in the block reverse the variables using the sorting operator

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]


reversed_elements = arr.map do |element|
                      element.sort do |a,b|
                        b <=> a
                      end
                    end

p reversed_elements