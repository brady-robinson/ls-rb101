# Problem:

# Given a string, return true of occuring parentheses match with
# one open and one closing paren. 

# Examples/test cases:

# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false

# Question: what if a closing paren is followed by an opening paren?

# Data structure: string/hash

# Algorithm:
# - initialize a count variable that equals 0
# - divide the input string into an array containing characters and
#   save to a variable
# - iterate through the array using each
#   - if the current character is a '('
#     - add 1 to count
#   - else if the current character is a ')'
#     subtract 1 from count
#   - to account for the effect of a closing paren followed by an
#     opening paren, return false if count ever falls below 0
# - if count equals 0
#   - return true
# - false

def balanced?(string)
  count = 0
  array = string.chars 

  array.each do |character|
    if character == '('
      count += 1
    elsif character == ')'
      count -= 1
      return false if count < 0
    end
  end
  if count == 0
    true
  else
    false
  end
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
