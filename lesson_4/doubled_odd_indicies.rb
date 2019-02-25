# problem: double numbers at odd inicies in an array
# data structure: array
# algorithm: 
# - define double_every_other(numbers)
# - initialize an empty array
# - initialize a counter variable
# - start a loop
#    - break if counter equals numbers size
#    - set current_number equal to numbers counter
#    - if current index is odd, double current_number
#    - add current number to empty array
#    - increment counter

def double_every_other(numbers)
  new_array = []
  counter = 0

  loop do 
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    new_array << current_number

    counter += 1
  end
  new_array
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_every_other(my_numbers)
p my_numbers