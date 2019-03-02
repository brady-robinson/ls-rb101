# problem: take string and return string with all five or more
#          letter words reversed
# data structure: array
# algorithm: 
# - def method
# - make new_variable
# - initialize a counter
# - if string.split.size > 1
#    - new_variable = the string split
#    - start a loop
#    - current element of new variable character 
#      method if current_element.size > 4
#      plus reverse and then join
#    - break if counter == array size
#    - return the new_variable with a space
#   else
#    - if string.size > 4
#    - call character method on single word string, reverse, join
# - call chars method

def reverse_words(string)
  if string.split.size >= 2
    counter = 0
    array = string.split
    loop do 
      current_element = array[counter] 
      if current_element.size >= 5
        array[counter] = current_element.chars.reverse.join
      end
      counter += 1
      break if counter == array.size
    end
    array.join(' ')
  else
    string.chars.reverse.join
  end
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS