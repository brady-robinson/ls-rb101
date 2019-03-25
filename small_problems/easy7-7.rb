def multiply_list(array_1, array_2)
  array_1.zip(array_2).map {|array| array.inject(:*)}
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
