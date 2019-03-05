# problem: print all odd numbers between 1..99
        # input: none
        # output: odd numbers on separate lines
        # explicit/implicit reqs: print only odd numbers
# tests: none
# data: numbers
# alg:
# - using a range from 1..99
# - iterate using each
# - print if odd
# - next if even

array = (1..99).to_a
counter = 0

loop do 
  current_element = array[counter]
  puts current_element
  break if counter >= array.size
  counter += 2
end