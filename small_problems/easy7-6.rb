def show_multiplicative_average(array)
  denominator = array.size.to_f
  numerator = array.inject(:*).to_f

  quotient = (numerator/denominator)

  average = format('%.3f', quotient)

  puts "The result is #{average}"
end

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
