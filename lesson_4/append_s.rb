# problem: append s to each string in an array
# test cases:
# data structure: array
# questions:
# - Is it sufficient to add s with shovel operator?
# - Should I make a new array or alter the original array?
#    - I will default with making a new array
# input: an array of strings
# output: string form the array that have s on the end
# implicit reqs:
# explicit reqs: there must me only strings in the array
# algorithm:
# - initialize an array of strings
# - initialize a counter_variable
# - initialize an empty_container array
# - initialize an empty_variable to be used for current element

# - start the loop
#    - set empty_variable to current element of array
#    - add an s to the variable
#    - add this element to the empty_container
#    - incrememnt coutner by 1
#    - break if the counter equals the array size

# print the contents of the container_array

fruit = ['apple', 'banana', 'pear']
count = 0
fruits = []
current_fruit = ''

loop do 
  current_fruit = fruit[count]
  fruits << (current_fruit + 's')
  count += 1
  break if fruit.size == count
end

puts fruits

