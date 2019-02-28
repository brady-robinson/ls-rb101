# problem: capitalize each word in the sentence
# data structure: array
# alogorithm:
# - split the string into elements into an array
# - use .each to iterate over the array and capitalze each word
# - reassign word to a concatenated string of new elements

words = "the flintstones rock"

puts words.split.map {|word| word.capitalize }.join(' ')
