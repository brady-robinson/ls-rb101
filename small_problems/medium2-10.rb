# problem: write a method that employs bubble sort algorithm

# data: array

# input: array
# output: sorted array!

# alg: 
# - this is going to need a nested loop
# - initialize a variable that will change when any two integers are swapped
# - initialize a count variable
# - start a loop
#   - in the outer loop, before inner loop, break if change variable is 0
#     - start inner loop 
#       - break if count equals array size
#       - compare element count and count plus one
#       - when result is 1, swap elements
#         - if swap elements, add one to change variable
#       - add one to count
#   - back in outer loop, reset the count to 0
# - return the sorted array

def bubble_sort!(array)
  change_variable = 0
  count = 0
  loop do 
    loop do 
      break if count >= array.size
      if (array[count] <=> array[count + 1]) == 1
        array[count], array[count + 1] = array[count + 1], array[count]
        change_variable += 1
      end
      count += 1
    end
    break if change_variable == 0
    count = 0
    change_variable = 0
  end
  array
end

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
