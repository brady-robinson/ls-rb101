# problem: write a method that returns 32 characters separated by 
# five hyphens intermittently when method is called
# - How do I call the method so that it prints the string?
# data: string
# alg: 
# - make a variable that holds a random integer between 0-9
# - make a variable that holds a random lower case letter in the alphabet
# - create a structure that can be iterated over to serve
#   as the base of the string
# - on each iteration, add either a letter or number to the structure
# - return the structure as a string with four hyphens separating
#   five groups of 32 seperate characters

def uuid
  characters = ["0","1","2","3","4","5","6","7","8","9","a",'b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  string = ''

  36.times do 
    string << characters.sample
  end

  string[8] = "-"
  string[13] = "-"
  string[18] = "-"
  string[23] = "-"
  
  string
end

puts uuid