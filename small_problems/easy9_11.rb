def buy_fruit(array)
  new_array = []
  array.each_with_index do |item|
    item[1].times do
      new_array << item[0]
    end
  end

  new_array
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
