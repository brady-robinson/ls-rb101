def sum_of_sums(array)
  count = 0
  total = 0
  working_array = []
  loop do 
    break if count >= array.size
    working_array = array[0..count]
    total += working_array.inject(:+)
    count += 1
  end

  total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35