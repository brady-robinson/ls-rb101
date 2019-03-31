def sum_square_difference(n)
  result_1 = 0
  count_1 = 0
  loop do 
    break if count_1 > n
    result_1 += count_1
    count_1 += 1
  end
  sum_squared = result_1**2

  result_2 = 0
  count_2 = 0
  loop do 
    break if count_2 > n
    result_2 += count_2**2
    count_2 += 1
  end
  squared_sum = result_2

  difference = sum_squared - squared_sum

  difference
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
