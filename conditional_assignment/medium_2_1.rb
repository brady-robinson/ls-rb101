# Problem: 

# Given a file that contains text, determine
# which sentence in the text is the longest. Print the longest
# sentence, as well as the number of words it contains. 

# Examples/test cases: 

# Implicit requirements: non-alphanumeric
# characters are counted as words; any sequence of characters
# that are not spaces is considered a word. Explicit requirements:
# A sentence is a sequence of characters that ends with a period, 
# question mark, or exclamation point. 

# input: text from a file
# output: the longest sentence from the file along with its length
# in terms of the number of words

# Data structure: 

# The text will be converted from a long string
# to an array of strings that represent sentences at each index.

# Algorithm:
# - initialize a variable to reference the text from a file
# - initialize a sentence_array that contains the text split
#   - use a regular expression to split the text at ?,.,!
# - initialize a nested_sentence_array that contains sentence_array
#   with each sentence split at spaces
#   - use map to accomplish this
#   - save a sorted nested_sentence_array by the size of the sub arrays
# - join the longest element of nested_sentence_array to reproduce
#   the original sentence form the text
#   - return this longest sentence
#   - return the count of the final element of nested_sentence array

text = File.read('text.txt')

sentence_array = text.split(/\.|\?|!/)
nested_sentence_array = sentence_array.map { |sentence| sentence.split(" ")}
sorted_nested_sentence_array = nested_sentence_array.sort_by { |sub_array| sub_array.size }
number_words_in_biggest_sentence = sorted_nested_sentence_array.last.size
biggest_sentence = sorted_nested_sentence_array.last.join(" ")

puts biggest_sentence
puts "This sentence has #{number_words_in_biggest_sentence} words."
