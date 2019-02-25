def multiply(numbers, multiplier)
  new_array = []
  counter = 0

  loop do 
    break if counter == numbers.size
    current_number = numbers[counter]

    new_array[counter] = current_number * multiplier

    counter += 1
  end
  new_array
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3)
