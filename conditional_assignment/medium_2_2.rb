# Problem: 

# According to a spelling restriction, create 
# a method that returns true if a word passes the restriction. The 
# restriction is in the form of 13, two-letter blocks. A word is not
# allowed to be spelled with two letters from any block. 

# Examples/test cases:

# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true

# implicit requirements: this method is case insensitive

# input: a single string, a word
# output: a boolean value

# Data structure:

# The blocks are represented in an array as 13 strings

# Algorithm:
# - create a constant that references an array containing pairs
#   of letters that cannot occur together in a word
# - create a variable that represents the input in all caps
# - use each to iterate through the constant
#   - on each iteration, count the number of occurrences of the string
#     from the constant in the input string
#     - if the count is greater than one, return false
# - return true

UNITS = ["BO", "GT", "VI", "XK", "RE", "LY", "DQ", "FS", "ZM", 
          "CP", "JW", "NA", "HU"]

def block_word?(word)
  all_cap_word = word.upcase
  UNITS.each do |unit|
    return false if all_cap_word.count(unit) > 1
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
