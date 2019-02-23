# Problem: this loop does not stop with input of yes
# Test cases: NA
# Data structure: NA
# Questions: NA
# Expected input: yes
# Expected output: "Should I stop looping? (yes/no)"
# Explicit requirements: input of yes will break the loop; other inputs not considered
# Implicit requirements: NA
# Algorithm: NA

loop do
  puts 'Should I stop looping? (yes/no)'
  answer = gets.chomp.downcase
  break if answer == 'yes'
  puts "Incorrect answer. Please answer 'yes'."
end