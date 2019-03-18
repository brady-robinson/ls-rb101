# problem: given an array, write a method that returns an 
# array of the even indexed elements starting at 0

# data: array
# input: array
# output: new array

# alg: 
#  - use map method 
#  - in the map method's block
#     - use the select method 
#      - in the select method's block 
#       - return elements at 0 index or even indexes

def oddities(array)
  count = 0
  new_array = []
  loop do
    break if array.size == 0
    new_array << array[count]
    count += 2
    break if count >= array.size
  end
  new_array
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
