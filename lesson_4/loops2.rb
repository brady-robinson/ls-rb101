# Problem: two nested loops loop infinitely
# Test cases: none
# Questions:
# input: none
# output: three string that represent different levels of the loop
# Algorithm: NA



loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'