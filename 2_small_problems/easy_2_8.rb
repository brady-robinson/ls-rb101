puts ">> Please enter an integer greater than 0:"
num = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp.downcase


if operation == 's'
  puts "The sum of the integers between 1 and #{num} is #{(1..num).reduce(:+)}."
elsif operation == 'p'
  "The sum of the integers between 1 and #{num} is #{(1..num).reduce(:*)}."
else
  "Invalid input."
end