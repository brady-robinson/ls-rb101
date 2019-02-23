# problem: select all the g's out of a string and add to an array
# test cases: NA
# data structure: string, array
# input: none
# output: array of g's
# implicit reqs: 
# explicit reqs:
# - there needs to be a string to begin with
# algorithm:
# - initialize a string variable that points to a string
# - initialize an empty current_char variable 
# - initialize an empty g_array where the g's will go
# - initialize a counter variable
# - start loop 
#   - set current character variable to first element of string using counter
#   - if current character is a g, then add to g_array
#   - increment the counter variable
#   - break if counter is equal to string size
# - print the g_array


string = "dahlfjkdhaclhfkdsgfdgeakgsdfhgdsjhfghdjsgfhjdgfjahgdf"
current_char = ''
counter = 0
g_array = []

loop do 
  current_char = string[counter]

  if current_char == 'g'
    g_array << current_char
  end
  
  counter += 1
  break if counter == string.size
end

puts "There were #{g_array.size} g's in the input string."
