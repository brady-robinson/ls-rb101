def running_total(array)
  new_array = []
  current_element = 0
  count = 0
  array.each do |num|
    current_element += num
    new_array << current_element
  end
  new_array
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
