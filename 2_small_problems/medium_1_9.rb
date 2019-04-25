def fibonacci_last(nth)
  fib_array = [1,1]
  new_element = 0
  loop do 
    break if fib_array.size >= nth
    new_element = fib_array[-1] + fib_array[-2]
    fib_array << new_element
  end
  fib_array.last % 10
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)
p fibonacci_last(100)