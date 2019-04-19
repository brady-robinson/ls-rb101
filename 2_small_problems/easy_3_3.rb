puts "Please write word or multiple words:"
words = gets.chomp
answer = words.delete(" ")

puts "There are #{answer.size} characters in '#{words}'."