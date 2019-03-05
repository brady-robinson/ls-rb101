# up: take user inputs of bill amount and tip percentace and 
#     calcualte the tip amount and total bill

#     input: user inputs tip percentage and bill amount
#     output: print the tip amount
#             print the total bill (bill plus tip)

#     implicit/explicit reqs?
#             should I validate user input? assumed no
#             convert to float to display parts of percentage

# tests: NA

# data: numbers
# alg:
# - ask for the two inputs
# - convert the input into floats
# - do the math
# - print the outputs

puts "What is the bill?"
bill = gets.to_f
puts "What is the tip percentage?"
tip_percentage = gets.to_f

tip = ((tip_percentage*bill)/100).round(2)
total_bill = (bill + tip).round(2)

puts "The tip is $#{tip}."
puts "The total is $#{total_bill}."