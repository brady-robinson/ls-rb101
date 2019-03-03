# problem: calcuate a fifty percent bonus of a salary
# data structure = none
# algorithm:
# - define a method that takes two arguments, an integer and a boolean
# - if the boolean is true
#   - take 50% of the integer
# - if the boolean is false
#   - return 0

def calculate_bonus(integer, boolean)
  boolean ? ((50 * integer)/100) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000