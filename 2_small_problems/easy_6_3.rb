def find_fibonacci_index_by_length(length)
  fib_array = [1, 1, 2]
  count = 1
  current_element = 0

  loop do 
    break if current_element.digits.size >= length
    fib_array << (fib_array[count] + fib_array[count + 1])
    current_element = fib_array.last
    count += 1
  end

  p fib_array
  fib_array.size
  
end

p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
#p find_fibonacci_index_by_length(10) #== 45
#p find_fibonacci_index_by_length(100) #== 476
#p find_fibonacci_index_by_length(1000) #== 4782
#p find_fibonacci_index_by_length(10000) #== 47847