def factors(number)
  divisor = number
  factors = []
  if number > 0
    loop do
      factors << number / divisor if number % divisor == 0
      divisor -= 1
      break if divisor == 0
    end
    factors
  elsif number <= 0
    "Invalid input. Please enter a number greater than 0."
  end
end

puts factors(10)
puts factors(0)