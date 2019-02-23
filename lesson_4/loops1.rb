# Problem:
# stop this loop from printing infintely

# Test Cases:
# insert break before end to exit the loop

# expected input: none
# expected output: 'just keep printing...'

# explicit requirements: must uncondiciotnally break from 
# loop after one iteration
# implicit requirements:

loop do
  puts 'Just keep printing...'
  break
end