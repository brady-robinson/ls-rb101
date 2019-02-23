#problem: use a for loop to greet each friend individually
#
#questions:
#expected output: 'Hi, friend!'
#explicit requirements:
#implicit requirements:
#algorithm: 
# - set the friends array with four friends
# - start for loop
# - for each item in array
#    - puts concatenated item in string with 'hi, ...'
# 

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for i in friends
  puts "Hi, #{i}!"
end
