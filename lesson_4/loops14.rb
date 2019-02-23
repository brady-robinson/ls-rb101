# Problem: this loop needs to only accept correct answer and 
#          break when it is input
# test cases: NA
# questions: 
# - will this contain a validation method?
#     - what if the user inputs string '4'
# input: user inputs answer: 4
# output: either correct or try again
# implicit requirement:
# - the answer needs to be an integer or the string '4'
# explicit requirement: 
# - the correct answer has to include 4
# algorithm:
# - start a loop
#    - ask the user "what is 2 + 2"
#    - user inputs, gets.chomp.to_i
#    - break if user inputs 4
#    - print "try again" otherwise and restart loop
# - print "correct"

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  break if answer == 4
  puts "Incorrect. Try again. Integers only."
end

puts "That's correct!"