def halvsies(array)
  first_half = []
  second_half = []
  nested = []
  count = 0
  count_2 = array.size / 2

  if array.size.even?
    loop do 
      break if count >= array.size / 2
      first_half << array[count]
      second_half << array[count_2]
      count += 1
      count_2 += 1
    end
  elsif array.size.odd?
    loop do 
      break if count >= array.size / 2 + 1
      first_half << array[count]
      second_half << array[count_2 + 1]
      count += 1
      count_2 += 1
    end
  end

  second_half.delete(nil)

  nested << first_half << second_half

end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]