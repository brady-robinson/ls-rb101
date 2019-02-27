# problem: add the values of a hash together
# test cases: What if a value isn't an integer?
# data structure: hash
# algorithm:
# - call to array on the hash
# - flatten the resulting array
# - store the flattened array in a new variables
# - start a counter
# - initialize a age variable
# - start a loop
#    - break if counter == length of array
#    - with each iteration run element through an if 
#    - if.integer?
#    - add to age
#    - else next
# - return age

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_ages = 0
ages.each { |_,age| total_ages += age }
puts total_ages # => 6174

