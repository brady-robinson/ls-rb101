def fizzbuzz(num_1, num_2)
  string = ''
  array = []
  (num_1..num_2).each do |num|
    if num % 3 == 0 && num % 5 == 0 
      array << 'FizzBuzz'
    elsif num % 3 == 0
      array << 'Fizz'
    elsif num % 5 == 0
      array << 'Buzz'
    else
      array << num
    end
  end
  array.join(", ")
end

puts fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
