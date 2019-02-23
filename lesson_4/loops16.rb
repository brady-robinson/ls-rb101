# Problem: take away each element from an and print with a loop
# test cases: none
# data structure: array
# questions:
# - should I start from the beginning or end? Does it matter?
# input: none
# output: print each element in the array
# implicit req: destructive method should be used
# explicit req: none
# algorithm:
# - initialize names array with strings as elemts
# - start loop
#    - print the first name, remove the name simultaneously
#    - break if the size of names array is zero


names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do 
  puts "#{names.shift}"
  break if names.size == 0
end
