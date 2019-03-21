# problem: given an integer as an argument, calculate the index 
# of the first fibonacci number that has integer digits

# data: integers

# examples: find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# alg: 
#  - create fibonacci number generating loop that keeps
#    track of the number of digits in each fibonacci number
#  - initialize a current_size variable that keeps track of 
#    current iteration's number of digits
#  - break out of the loop when current_size variable equals
#    argument
#  - return the size of the array 

def find_fibonacci_index_by_length(digits)
  fib_arr = [0, 1]
  current_size = 0
  count = 0
  next_fib = 0
  loop do 
    next_fib = fib_arr[count] + fib_arr[count + 1]
    fib_arr << next_fib
    current_size = next_fib.to_s.size
    break if current_size >= digits
    count += 1
  end
  fib_arr.size - 1
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
