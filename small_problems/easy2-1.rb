# up: The program should randomly generate an age for Teddy
      # the program should ask user for a name
      # the program should assign the name "Teddy" if no name given
        # should I verify the input as a string?
        # what if an integer or bad input is given?

      # input: none
      # output: a string: "Teddy is however many years old"
      # requirements:
        # Teddy's age should be between 20 and 200
        # implicit: for the given name, it has to be a string
# test cases: none
# data: string
# alg: 
  # print a string that asks the user for a name
  # if no name is given, assign name to 'Teddy'
    # build in this functionality with an if statement
      # how do I verify that no input was given?
        # use a method that assigns Teddy
  # save the name to a variable
  # use the random function with range from 20..200
  # save this age to a variable
  # print string using concatenation to include the age
    # add name to the string concatenation

puts "Enter a name:"
name = gets.chomp.to_s

def random_age(person)
  if person.empty?
    person = 'Teddy'
  end
  age = rand(20..200)
  puts "#{person} is #{age} years old."
end

random_age(name)
