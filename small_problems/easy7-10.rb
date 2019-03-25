# problem: retrieve the middle word of a string

# data: string, array

# questions: what if there are an even number of words?
#            what if there is only one word?

# examples: middle("Launch School is great!") == "School is"
#           middle("Hello") == "Hello"
#           middle("My name is Brady Robinson") == "is"

# alg: 
#  - index equals string split size divided by two
#  - if string split size is even, take the index and return 
#    the values of the index and the index plus one
#  - if the string split size is odd, return the index plus one


def middle(string)
  index = string.split.size/2
  size = string.split.size
  if size == 1
    string
  elsif size.odd?
    string.split[index]
  else
    "#{string.split[index - 1]} #{string.split[index]}"
  end
end

p middle("Launch School is great!") #== "School is"
p middle("Hello") #== "Hello"
p middle("My name is Brady Robinson") #== "is"
