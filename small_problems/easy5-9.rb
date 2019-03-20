# problem: for adjacent, recurring elements in a string, 
# delete so that only one element exists

# data: string

# examples: crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# questions: return new string or same string?

# alg: 
#  - initialize a count variable
#  - use a loop to iterate
#  - on each iteration compare the current item to the 
#    item immediately following the current item
#    - if they are the same, delete the item and 
#      go to next iteration without incrementing count
#    - if they are different, incremement count and repeat

def crunch(string)
  count = 0
  crunched_string = ''
  while count <= string.size - 1
    crunched_string << string[count] unless string[count] == string[count + 1]
    count += 1
  end
  crunched_string
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''


