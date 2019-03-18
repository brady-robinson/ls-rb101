puts "=> Please write word of mulitple words:"
answer = gets.chomp

total_chars = answer.chars
total_chars.delete(" ")
number_of_chars = total_chars.size

puts "There are #{number_of_chars} characters in '#{answer}'."