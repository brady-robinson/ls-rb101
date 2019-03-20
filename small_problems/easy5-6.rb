# problem: given a string, make word lengths keys and frequency 
# of a given word length values in a hash

# data: string, hash
# input: string
# output: hash

# examples: 
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# alg:
#  - initialize an empty hash
#  - split the string
#  - iterate through the array
#  - using the map method output a new array of size of each element
#  - iterate through this new array
#     - add the value as a key to hash with a value of one
#     - for each other value, is it already exists
#         - add it to the value for that key
#     - else add a new key with a value of one

def word_sizes(string)
  hash = {}
  string_minus_nonletters = string.split.map do |word|
    word.gsub(/[^a-z]/i,'')
  end
  array_of_size = string_minus_nonletters.map {|word| word.size}.sort
  count = 0
  loop do 
    break if count >= array_of_size.length
    hash[array_of_size[count]] = array_of_size.count(array_of_size[count])
    array_of_size.delete(array_of_size[count])
  end
  hash
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
  