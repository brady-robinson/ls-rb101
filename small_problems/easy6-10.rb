# problem: write a method that takes an integer and prints
# a tringle of that many stars that meets two sides

# data: integer, characters

# alg:
#  - initilaize a counter variable that starts at one
#  - print counter variable number of stars with each iteration
#  - break when counter equals integer

def triangle(size)
  count = 1
  spaces = size - 1
  stars = 1

  size.times do |n|
    puts (" " * spaces) + ('*' * stars)
    stars += 1
    spaces -= 1
  end

end

triangle(5)
triangle(9)
triangle(20)
