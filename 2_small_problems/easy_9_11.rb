def buy_fruit(array)
  array.map do |sub_array|
    [sub_array[0]] * sub_array[1]
  end.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  #["apples", "apples", "apples", "orange", "bananas","bananas"]