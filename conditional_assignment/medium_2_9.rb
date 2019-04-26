# Problem:

# Use the bubble sort method to sort an array. The bubble sort method
# involves seeing if the first of two adjacent elements in an array
# is greater, and swapping them if so. 

# Examples/test cases:

# array = [5, 3]
# bubble_sort!(array)
# array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# Data structure: array

# Algorithm:
# - this will use nested loops
# - start the outer loop
# - initialize a count variable to 0
# - initialize a current_iteration value to the current state of the
#   array in a copied form to avoid mutation side effects
# - break if current_iteration equals array
#   - start the inner loop
#   - break if count is greater than or equal to array.size minus 1
#   - if array[count] > array[count + 1]
#     - array[count], array[count + 1] = array[count + 1], array[count]
#   - count += 1
# - last line should be the array

def bubble_sort!(array)
  loop do 
    count = 0
    current_iteration = array.clone

    loop do 
      break if count >= array.size - 1
      if array[count] > array[count + 1]
        array[count], array[count + 1] = array[count + 1], array[count]
      end
      count += 1
    end

    break if current_iteration == array
  end
  array
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

