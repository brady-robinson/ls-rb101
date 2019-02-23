# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# questions:
# What is a substring?
# What is a palindrome?
# Are new objects getting returned or sliced parts of original object?
# If an empty string is input, what should be the output?
# If no palindromes are present, what should be the output?
# How should the method handle non-string inputs?

# input: a string
# output: an array of substrings

# Explicit requirements:
# every palindrome in the string should be returned as a separate element in an array. 
# the palindromes should be case sensitive

# Implicit requirements:
# the returned elements in the array should be new objects (not included in the example)

# algorithm:
# - create an empty array called `result` that will contain all
#   the required substrings
# - initialize variable start_substring_idx and assign 0 to it.
# - initialize variable end_substring_idx and assign value of
#   start_substring_idx + 1 to it.
# - Enter loop which will break when start_substring_idx is equal
#     to str.size - 1
#   - Within that loop enter another loop that will break if
#     end_substring_idx is equal to str.size
#     - append to the result array part of the string from
#       start_substring_idx to end_substring_idx
#     - increment `end_substring_idx` by 1.
#   - end the inner loop
#   - increment `start_substring_idx` by 1.
#   - reassign `end_substring_idx` to `start_substring_idx += 1`
# - end outer loop
# - return `result` array

#  is_palindrome? method
#  =====================
#  - check whether the string value is equal to its reversed
#    value. You can use the String#reverse method.

#  palindrome_substrings method
#  ============================
#  - initialize a result variable to an empty array
#  - create an array named substring_arr that contains all of the
#    substrings of the input string that are at least 2 characters long.
#  - loop through the words in the substring_arr array.
#    - if the word is a palindrome, append it to the result
#      array
#  - return the result array

def substrings(str)
  result = []
  start_substring_idx = 0
  end_substring_idx = start_substring_idx + 1

  loop do 
    break if start_substring_idx == (str.size - 1)

    loop do 
      break if end_substring_idx == str.size
      result << str[start_substring_idx..end_substring_idx]
      end_substring_idx += 1
    end

    start_substring_idx += 1
    end_substring_idx = start_substring_idx + 1
  end

  result
end

def is_palindrome?(str)
  str == str.reverse
end

def palindrome_substrings(str)
  result = []
  substrings_arr = substrings(str)
  substrings_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result
end

p palindrome_substrings("jdiwbeldjhaisduhfisyfgbsldnjkcmjksbdfhsggzhjdsbzfhbfakdsjhfj")
