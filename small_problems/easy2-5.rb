# problem: take a user's name and respond with a greeting
#          if a specific character '!' is present the name, 
#          respond with a different greeting
#
#          input: user name
#          output: greeting
#          
#
# tests: what if the ! doesn't come at the end of the string?
#        !Brady
# data: string
# alg:
# - take user input and search for a !
# - if no !, print one response
# - if !, print different response

puts "What is your name?"
name = gets.chomp.capitalize

if name.include?('!')
  puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end