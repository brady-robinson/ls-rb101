# problem: take a string and make an array with each word and its
# length represented as separate strings

# data: string, array

# facts: non-alphanumeric characters do not count (not true)

# examples: 
# word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# word_lengths("") == []

# alg: 
# - split the string
# - count the size of each element of the array
#   - during the count, append the size to the element with a space

def word_lengths(string)
  array = string.split
  array.each do |element|
    element << " #{element.size}"
  end
  array
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
