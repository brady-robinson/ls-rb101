def sum_square_difference(num)
  number = 0
  1.upto(num) {|iteration| number += iteration}
  squared_sum = number**2

  number_2 = 0
  1.upto(num) {|iteration| number_2 += iteration**2}
  sum_of_squares = number_2

  squared_sum - sum_of_squares
end

p sum_square_difference(3)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150