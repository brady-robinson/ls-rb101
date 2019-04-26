# Problem:

# Given a string, return a hash that represents the percentage
# of occurences of upper case letters, lowercase letters, and 
# characters that are neither in the string. 

# Examples/test cases:

# letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# input: a string
# output: a hash

# Question: In what way are spaces counted?
#           Will I need to use floats for decimals?

# Data structure: string/hash

# Algorithm:
# - make a hash with lowercase, uppercase, and neither as keys, 
#   zero as values
# - save the size of the string to string_size
# - save the counts of lowercase, uppercase, and neither
#   to separate values
# - set the corresponding value to the ratio of the counts
#   to the size of the string
# - return the hash

def letter_percentages(string)
  hash = {lowercase: 0, uppercase: 0, neither: 0}
  string_size = string.size
  
  count_lowercase = string.count("a-z").to_f
  count_uppercase = string.count("A-Z").to_f
  count_neither = string.count("^A-Za-z").to_f
  
  percentage_lowercase = (100 * count_lowercase / string_size).to_f
  percentage_uppercase = (100 * count_uppercase / string_size).to_f
  percentage_neither = (100 * count_neither / string_size).to_f

  hash[:lowercase] = percentage_lowercase
  hash[:uppercase] = percentage_uppercase
  hash[:neither] = percentage_neither

  hash
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
