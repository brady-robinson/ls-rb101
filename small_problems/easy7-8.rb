# problem: return a new array that contains the product
# of every possible pair of numbers between two arrays
 
# data: array

# example: multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# alg:
# - create a nested loop
# - in the outer loop use the first argument
# - in the inner loop use the second argument
# - initialize count one
# - initialize a new array
# - start a loop
# - for index count
# - iterate through the second argument
# - add the result of each iteration to a new array
# - break when count is the size of second argument

def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map {|item_1, item_2| item_1 * item_2 }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
