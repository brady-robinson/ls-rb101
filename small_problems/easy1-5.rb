#problem: method should return new string with words reversed
#data structure: array
#algorithm:
# - define the method
# - set new variable equal to string split
# - return new variable reversed and joined with a space

def reverse_sentence(string)
  string.split.reverse.join(' ')
end


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'