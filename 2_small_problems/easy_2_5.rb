puts "What is your name?"
name = gets.chomp

if name.chars.last == '!'
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end