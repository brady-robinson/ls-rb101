# problem: given string, sount occurence of each letter in string and
#          make this into a hash with letters as keys and frequencies as 
#          values
# data structure: hash
# algorithem:
# - turn string into an array of characters
# - create an empty hash
# - assign each unique element in array as a key in hash
# - assign a count of each unique element in array as a value in hash

statement = "The Flintstones Rock"

new_array = statement.downcase.chars 
unique_chars = new_array.uniq.delete_if{|element| element == ' '}  
new_hash = {}
count = 0
current_element = ''

loop do 
  current_element = unique_chars[count]
  new_hash[current_element] = new_array.count(current_element)
  count += 1
  break if count == unique_chars.size
end

p new_hash
