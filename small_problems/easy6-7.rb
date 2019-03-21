def halvsies(array)
  array_1 = []
  array_2 = []
  combo_array = []
  size = 0
  if array.size.odd?
    size = array.size/2
    array_1 = array[0..size]
    array_2 = array[(size+1)..-1]
  else
    size = array.size/2 - 1
    array_1 = array[0..size]
    array_2 = array[(size+1)..-1]
  end
  combo_array << array_1
  combo_array << array_2
  combo_array
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) #== [[5], []]
p halvsies([]) #== [[], []]
